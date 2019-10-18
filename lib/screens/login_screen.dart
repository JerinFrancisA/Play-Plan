import 'package:flutter/material.dart';
import 'package:play_plan/screens/user_home.dart';
import 'package:play_plan/custom_widgets/alert_dialog_button.dart';
import 'package:play_plan/custom_widgets/button.dart';
import 'package:play_plan/custom_widgets/inputbox.dart';
import 'package:play_plan/utilities/constants.dart';
import 'package:play_plan/utilities/boys_info.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "LoginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

String userPhoneNumber;

class _LoginScreenState extends State<LoginScreen> {
  InputBox inputBox = InputBox(
    hintText: "Enter Phone Number",
    labelText: "Phone Number",
    keyboardType: TextInputType.numberWithOptions(),
    maxLength: 10,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'http://cdn.shopify.com/s/files/1/2398/7125/products/soccer-ball-wallpaper-hd-desktop-background-2014-soccer-ball-wallpaper--18_1024x1024.jpg?v=1511671604'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.5), BlendMode.modulate),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                inputBox,
                Button(
                  text: "GO",
                  onPressed: () async {
                    if (boysInfo[inputBox.input] != null) {
                      userPhoneNumber = inputBox.input;
                      await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                              'Welcome ${boysInfo[inputBox.input]}',
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
                            userName: boysInfo[inputBox.input],
                            userPhoneNumber: inputBox.input,
                          ),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
