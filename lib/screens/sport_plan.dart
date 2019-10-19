import 'package:flutter/material.dart';
import 'package:play_plan/screens/sport_plan2.dart';
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
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.greenAccent.withOpacity(0.7),
                Colors.blue.withOpacity(0.7),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: ListView.builder(
            itemCount: sports.length,
            itemBuilder: (BuildContext build, index) {
              return InkWell(
                onTap: () {
                  planName = sports[index][0];
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SportPlan2(
                        planName: planName,
                      ),
                    ),
                  );
                },
                child: Card(
                  color: Colors.white.withOpacity(0.7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(52.0),
                    side: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  elevation: 5.0,
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          sports[index][1],
                          scale: 2.0,
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
      ),
    );
  }
}
