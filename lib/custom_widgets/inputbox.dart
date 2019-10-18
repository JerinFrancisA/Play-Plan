import 'package:flutter/material.dart';

class InputBox extends StatefulWidget {
  const InputBox({
    Key key,
  }) : super(key: key);

  @override
  _InputBoxState createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        keyboardType: TextInputType.numberWithOptions(),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.blue,
        ),
        onChanged: (val) {

        },
      ),
    );
  }
}
