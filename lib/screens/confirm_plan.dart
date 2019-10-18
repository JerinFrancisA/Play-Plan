import 'package:flutter/material.dart';
import 'package:play_plan/screens/pick_friends.dart';
import 'package:play_plan/custom_widgets/button.dart';
import 'package:play_plan/utilities/constants.dart';

class ConfirmPlan extends StatefulWidget {
  final planName;
  final planDate;
  final planTime;

  ConfirmPlan(
      {@required this.planName,
      @required this.planDate,
      @required this.planTime});

  @override
  _ConfirmPlanState createState() => _ConfirmPlanState();
}

class _ConfirmPlanState extends State<ConfirmPlan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Confirm Time and Date'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              widget.planName,
              style: kDefaultTextStyle,
            ),
            Text(
              widget.planDate,
              style: kDefaultTextStyle,
            ),
            Text(
              widget.planTime,
              style: kDefaultTextStyle,
            ),
            Button(
              text: 'CONFIRM',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PickFriends(
                      planName: widget.planName,
                      planDate: widget.planDate,
                      planTime: widget.planTime,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
