import 'package:flutter/material.dart';
import 'package:play_plan/screens/complete_plan_and_whats_app.dart';
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
  List<bool> selectedFriends = List.filled(boysInfo.length, false);
  List<Color> listColors = List.filled(boysInfo.length, Colors.white);

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
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedFriends[index] = !selectedFriends[index];
                    listColors[index] = selectedFriends[index]
                        ? Colors.lightGreenAccent
                        : Colors.white;
                  });
                },
                child: Card(
                  color: listColors[index],
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
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            for (int i = 0; i < selectedFriends.length; i++) {
              if (selectedFriends[i]) print(boysInfo[boysPhoneNumbers[i]]);
            }
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CompletePlanAndWhatsApp(
                  selectedFriends: selectedFriends,
                  planName: widget.planName,
                  date: widget.planDate,
                  time: widget.planTime,
                ),
              ),
            );
          },
          child: Icon(Icons.done),
        ),
      ),
    );
  }
}
