import 'package:flutter/material.dart';
import 'package:play_plan/screens/view_complete_plan.dart';
import 'package:play_plan/utilities/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ViewPlanPage extends StatefulWidget {
  ViewPlanPage({Key key}) : super(key: key);

  @override
  _ViewPlanPageState createState() => _ViewPlanPageState();
}

class _ViewPlanPageState extends State<ViewPlanPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: StreamBuilder(
            stream: Firestore.instance.collection('plans').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor:
                        Colors.lightGreenAccent.shade100.withOpacity(0.5),
                  ),
                );
              }
              var plans = snapshot.data.documents;
              return ListView.builder(
                itemCount: plans.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewCompletePlan(
                            plan: plans[index],
                          ),
                        ),
                      );
                    },
                    child: Card(
                      child: ListTile(
                        title: Text(
                          plans[index]['name'],
                          style: kDefaultTextStyle,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
