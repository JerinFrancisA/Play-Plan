import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:play_plan/screens/user_home.dart';
import 'package:play_plan/custom_widgets/alert_dialog_button.dart';
import 'package:play_plan/custom_widgets/button.dart';
import 'package:play_plan/custom_widgets/inputbox.dart';
import 'package:play_plan/utilities/constants.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "LoginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  InputBox inputBox = InputBox(
    hintText: "Enter Phone Number",
    labelText: "Phone Number",
    keyboardType: TextInputType.numberWithOptions(),
    maxLength: 10,
  );
  List<DocumentSnapshot> users;

  Future<void> verifyPhoneNumber() async {
    await Firestore.instance
        .collectionGroup('boys_info')
        .getDocuments()
        .then((val) {
      users = val.documents;
      print('sd');
      for (int i = 0; i < users.length; i++) {
        print(users[i].data['phone']);
        if (users[i].data['phone'] == inputBox.input) {
          print("success");
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(
                  'Welcome ${users[i].data['name']}',
                  style: kDefaultTextStyle,
                ),
                contentPadding: EdgeInsets.all(16.0),
                actions: <Widget>[
                  AlertDialogButton(
                    text: 'DISMISS',
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            },
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserHome(
                userName: users[i].data['name'],
                userPhoneNumber: users[i].data['phone'],
              ),
            ),
          );
        } else {
          print('wait boss');
        }
      }
    });
    print('okaayy..');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              inputBox,
              Button(
                text: "GO",
                onPressed: () async {
                  await verifyPhoneNumber();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
