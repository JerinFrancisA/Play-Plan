import 'package:flutter/material.dart';
import 'package:play_plan/custom_widgets/button.dart';
import 'package:play_plan/custom_widgets/inputbox.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "LoginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  InputBox inputBox = InputBox(hintText: "Enter Phone Number",
    labelText: "Phone Number",
    keyboardType: TextInputType.numberWithOptions(),
    maxLength: 10,);

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
                text: "Go",
                onPressed: () {
                  print(inputBox.)
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
