import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  String input;
  final keyboardType;
  final hintText;
  final labelText;
  final maxLength;

  InputBox(
      {@required this.keyboardType,
      @required this.hintText,
      @required this.labelText,
      this.maxLength});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        keyboardType: keyboardType,
        maxLength: maxLength,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          contentPadding: EdgeInsets.all(6.0),
          filled: true,
          fillColor: Colors.brown.shade100,
        ),
        onChanged: (val) {
          input = val;
        },
      ),
    );
  }
}
