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
              'Plan Details Confirmation',
              style: kDefaultTextStyle.copyWith(
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 3.0,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Plan : ${widget.planName}',
              style: kDefaultTextStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              'On : ${widget.planDate}',
              style: kDefaultTextStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              'At : ${widget.planTime}',
              style: kDefaultTextStyle,
              textAlign: TextAlign.center,
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
