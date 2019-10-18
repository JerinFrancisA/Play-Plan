import 'package:flutter/material.dart';
import 'package:play_plan/custom_widgets/alert_dialog_button.dart';

class UserHome extends StatefulWidget {
  UserHome({this.userName, this.userPhoneNumber});

  String userName;
  String userPhoneNumber;

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  void initState() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Welcome ${widget.userName}'),
            contentPadding: EdgeInsets.all(16.0),
            actions: <Widget>[
              AlertDialogButton(
                text: 'DISMISS',
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
