import 'package:flutter/material.dart';
import 'package:play_plan/utilities/boys_info.dart';
import 'package:play_plan/utilities/constants.dart';

class SportPlan extends StatefulWidget {
  SportPlan({Key key}) : super(key: key);

  @override
  _SportPlanState createState() => _SportPlanState();
}

class _SportPlanState extends State<SportPlan> {
  String planName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Select Sport'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: sports.length,
          itemBuilder: (BuildContext build, index) {
            return InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      child: Image.network(
                        sports[index][1],
                        fit: BoxFit.cover,
                      ),
                      radius: 50.0,
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      sports[index][0],
                      style: kDefaultTextStyle,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
