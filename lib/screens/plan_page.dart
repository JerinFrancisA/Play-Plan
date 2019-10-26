import 'package:flutter/material.dart';
import 'package:play_plan/screens/sport_plan.dart';
import 'package:play_plan/screens/other_plan.dart';
import 'package:play_plan/custom_widgets/bigbox.dart';

class PlanPage extends StatefulWidget {
  PlanPage({Key key}) : super(key: key);

  @override
  _PlanPageState createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn8.dissolve.com/p/D1028_97_086/D1028_97_086_1200.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.darken),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  BigBox(
                    text: 'SPORTS PLAN',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SportPlan()));
                    },
                    padding: EdgeInsets.only(
                        top: 28.0, left: 28.0, right: 28.0, bottom: 14.0),
                  ),
                  BigBox(
                    text: 'OTHER PLAN',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OtherPlan()));
                    },
                    padding: EdgeInsets.only(
                        top: 14.0, left: 28.0, right: 28.0, bottom: 28.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
