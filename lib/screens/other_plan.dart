import 'package:flutter/material.dart';
import 'package:play_plan/custom_widgets/inputbox.dart';

class OtherPlan extends StatefulWidget {
  OtherPlan({Key key}) : super(key: key);

  @override
  _OtherPlanState createState() => _OtherPlanState();
}

class _OtherPlanState extends State<OtherPlan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InputBox(
                  keyboardType: TextInputType.text,
                  hintText: 'Specify Plan',
                  labelText: 'Plan Name',
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
