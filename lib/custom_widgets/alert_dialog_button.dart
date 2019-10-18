import 'package:flutter/material.dart';
import 'package:play_plan/utilities/constants.dart';

class AlertDialogButton extends StatelessWidget {
  AlertDialogButton({@required this.text, @required this.onPressed});

  final text;
  String input;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: kButtonTextStyle,
        textAlign: TextAlign.center,
      ),
      color: Colors.orange.shade100,
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      height: 60.0,
    );
  }
}
