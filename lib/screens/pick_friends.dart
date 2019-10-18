import 'package:flutter/material.dart';

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
        body: ListView.builder(itemBuilder: null),
      ),
    );
  }
}
