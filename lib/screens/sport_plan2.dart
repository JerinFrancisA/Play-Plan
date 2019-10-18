import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:play_plan/custom_widgets/alert_dialog_button.dart';
import 'package:play_plan/custom_widgets/button.dart';
import 'package:play_plan/utilities/constants.dart';

import 'confirm_plan.dart';

class SportPlan2 extends StatefulWidget {
  String planName;

  SportPlan2({@required this.planName});

  @override
  _SportPlan2State createState() => _SportPlan2State();
}

class _SportPlan2State extends State<SportPlan2> {
  String datePicked;
  String timePicked;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Pick Date and Time',
            style: kDefaultTextStyle,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Button(
                text: 'PICK DATE AND TIME',
                onPressed: () {
                  DatePicker.showDateTimePicker(
                    context,
                    showTitleActions: true,
                    currentTime: DateTime.now(),
                    onConfirm: (date) {
                      datePicked = date.toString().split(' ')[0].toString();
                      timePicked = date
                          .toString()
                          .split(' ')[1]
                          .toString()
                          .substring(0, 8);
                      print('date : ' + datePicked);
                      print('time : ' + timePicked);
                    },
                    locale: LocaleType.en,
                  );
                },
              ),
              Button(
                text: 'CONFIRM',
                onPressed: () {
                  if (datePicked == null || timePicked == null) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(
                            'Date and Time not picked !',
                            style: kDefaultTextStyle,
                          ),
                          contentPadding: EdgeInsets.all(16.0),
                          actions: <Widget>[
                            AlertDialogButton(
                              text: 'OK',
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmPlan(
                          planName: widget.planName,
                          planDate: datePicked,
                          planTime: timePicked,
                        ),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
