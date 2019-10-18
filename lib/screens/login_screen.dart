import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  QuerySnapshot users;

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
                onPressed: () async {
                  users = await Firestore.instance.collectionGroup('boys_info').getDocuments();
                  print(users);
                  print(inputBox.input);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
