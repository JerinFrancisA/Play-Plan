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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Plan Now'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
