import 'package:flutter/material.dart';
import 'package:play_plan/utilities/constants.dart';

class ViewCompletePlan extends StatefulWidget {
  final plan;

  ViewCompletePlan({@required this.plan});

  @override
  _ViewCompletePlanState createState() => _ViewCompletePlanState();
}

class _ViewCompletePlanState extends State<ViewCompletePlan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  '${widget.plan['name']} Plan Details : ',
                  style: kDefaultTextStyle.copyWith(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Divider(
                  thickness: 5.0,
                ),
                Text(
                  'On: ${widget.plan['date']}',
                  style: kDefaultTextStyle,
                ),
                Text(
                  'At: ${widget.plan['time']}',
                  style: kDefaultTextStyle,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: ListView.builder(
                    itemCount: widget.plan['boys'].length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Text(
                          widget.plan['boys'][index],
                          style: kDefaultTextStyle,
                        ),
                      );
                    },
                  ),
                );
              },
            );
          },
          child: Icon(
            Icons.info_outline,
          ),
        ),
      ),
    );
  }
}
