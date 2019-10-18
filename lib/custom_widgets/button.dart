import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  Button({@required this.text, @required this.onPressed});

  final text;
  String input;
  final onPressed;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Text('Go'),
    );
  }
}
