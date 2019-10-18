import 'package:flutter/material.dart';
import 'package:play_plan/screens/confirm_plan.dart';
import 'package:play_plan/custom_widgets/inputbox.dart';
import 'package:play_plan/custom_widgets/button.dart';
import 'package:play_plan/custom_widgets/alert_dialog_button.dart';
import 'package:play_plan/utilities/constants.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class OtherPlan extends StatefulWidget {
  OtherPlan({Key key}) : super(key: key);

  @override
  _OtherPlanState createState() => _OtherPlanState();
}

class _OtherPlanState extends State<OtherPlan> {
  String datePicked;
  String timePicked;
  InputBox planName = InputBox(
    keyboardType: TextInputType.text,
    hintText: 'Specify Plan',
    labelText: 'Plan Name',
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            planName,
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
                }
                else {
                  Navigator.push(context, MaterialPageRoute(context, builder: (context) => ConfirmPlan(planName: planName.input, planDate: datePicked, planTime: timePicked)));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
