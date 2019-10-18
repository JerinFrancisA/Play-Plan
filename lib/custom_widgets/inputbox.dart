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
          icon: Icon(Icons.phone_android),
          contentPadding: EdgeInsets.all(26.0),
          filled: true,
          fillColor: Colors.green.shade100,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              width: 20.0,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(84.0),
            gapPadding: 10.0,
          ),
        ),
        onChanged: (val) {
          input = val;
        },
      ),
    );
  }
}
