import 'package:flutter/material.dart';
import 'package:play_plan/custom_widgets/alert_dialog_button.dart';
import 'package:play_plan/utilities/constants.dart';

class ViewCompletePlan extends StatefulWidget {
  final plan;

  ViewCompletePlan({@required this.plan});

  @override
  _ViewCompletePlanState createState() => _ViewCompletePlanState();
}

class _ViewCompletePlanState extends State<ViewCompletePlan> {
  Icon iconSet(int index) {
    print(widget.plan['agreed'][widget.plan['boys'][index]].toString() + " HMM ");
    return widget.plan['agreed'][widget.plan['boys'][index]] == true
        ? Icon(
            Icons.thumb_up,
            color: Colors.green,
          )
        : Icon(
            Icons.thumb_down,
            color: Colors.red,
          );
  }

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
                  actions: <Widget>[
                    AlertDialogButton(
                      text: 'OKAY',
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                  title: Text(
                    'Friends Invovled',
                    style: kDefaultTextStyle.copyWith(
                        fontSize: 30.0, fontWeight: FontWeight.w400),
                  ),
                  content: ListView.builder(
                    itemCount: widget.plan['boys'].length,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(52.0),
                          side: BorderSide(
                            style: BorderStyle.solid,
                            width: 3.0,
                            color: Colors.black,
                          ),
                        ),
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                widget.plan['boys'][index],
                                style: kDefaultTextStyle,
                                textAlign: TextAlign.center,
                              ),
                              iconSet(index),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          },
          child: Icon(
            Icons.info,
          ),
        ),
      ),
    );
  }
}
