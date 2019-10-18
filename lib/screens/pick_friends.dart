import 'package:flutter/material.dart';
import 'package:play_plan/utilities/boys_info.dart';
import 'package:play_plan/utilities/constants.dart';

class PickFriends extends StatefulWidget {
  final planName;
  final planDate;
  final planTime;

  PickFriends(
      {@required this.planName,
      @required this.planDate,
      @required this.planTime});

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
        body: Scrollbar(
          child: ListView.builder(
            itemCount: boysPhoneNumbers.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(
                    boysInfo[boysPhoneNumbers[index]],
                    style: kDefaultTextStyle,
                  ),
                ),
                elevation: 2.5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
