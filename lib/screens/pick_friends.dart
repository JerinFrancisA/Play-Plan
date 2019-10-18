import 'package:flutter/material.dart';
import 'package:play_plan/utilities/boys_info.dart';

class PickFriends extends StatefulWidget {
  PickFriends({Key key}) : super(key: key);

  @override
  _PickFriendsState createState() => _PickFriendsState();
}

class _PickFriendsState extends State<PickFriends> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pick Friends'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: boysInfo.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(boysInfo[index]);
          },
        ),
      ),
    );
  }
}
