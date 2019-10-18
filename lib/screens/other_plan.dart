import 'package:flutter/material.dart';
import 'package:play_plan/custom_widgets/inputbox.dart';
import 'package:play_plan/custom_widgets/button.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

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
                Button(
                  text: 'PICK DATE AND TIME',
                  onPressed: () {
                    DatePicker.showDatePicker(
                      context,
                      showTitleActions: true,
                      minTime: DateTime.now(),
                      maxTime: DateTime(2030, 12, 12),
                      onConfirm: (date) {
                        print('confirm $date');
                      },
                      currentTime: DateTime.now(),
                      locale: LocaleType.en,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
