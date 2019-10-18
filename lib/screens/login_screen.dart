import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "LoginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String inputNumber;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: TextField(
            keyboardType: TextInputType.numberWithOptions(),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.blue,
            ),
            onChanged: (val) {
              inputNumber = val;
            },
          ),
        ),
      ),
    );
  }
}
