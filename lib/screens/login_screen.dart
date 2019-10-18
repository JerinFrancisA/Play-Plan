import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:play_plan/screens/user_home.dart';
import 'package:play_plan/custom_widgets/button.dart';
import 'package:play_plan/custom_widgets/inputbox.dart';

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
                  var temp = await Firestore.instance
                      .collectionGroup('boys_info')
                      .getDocuments();
                  users = temp.documents;
                  for (int i = 0; i < users.length; i++) {
                    if (users[i].data['phone'] == inputBox.input) {
                      print("success");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserHome(
                            userName: users[i].data['name'],
                            userPhoneNumber: users[i].data['phone'],
                          ),
                        ),
                      );
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
