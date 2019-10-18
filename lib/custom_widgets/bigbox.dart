import 'package:flutter/material.dart';
import 'package:play_plan/utilities/constants.dart';

class BigBox extends StatelessWidget {
  final onTap;
  final padding;
  final text;

  BigBox({@required this.onTap, @required this.padding, @required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 0.0),
              colors: [const Color(0xFFFFFFEE), const Color(0xFF999999)],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: kHeaderTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
