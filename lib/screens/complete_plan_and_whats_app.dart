import 'package:flutter/material.dart';
import 'package:play_plan/utilities/boys_info.dart';
import 'package:play_plan/utilities/constants.dart';
import 'package:play_plan/custom_widgets/button.dart';
import 'package:play_plan/utilities/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class CompletePlanAndWhatsApp extends StatefulWidget {
  final selectedFriends;
  final planName;
  final date;
  final time;

  CompletePlanAndWhatsApp(
      {@required this.selectedFriends,
      @required this.planName,
      @required this.date,
      @required this.time});

  @override
  _CompletePlanAndWhatsAppState createState() =>
      _CompletePlanAndWhatsAppState();
}

class _CompletePlanAndWhatsAppState extends State<CompletePlanAndWhatsApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Send Message',
            style: kDefaultTextStyle,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Button(
              text: 'SEND WHATSAPP',
              onPressed: () {
                for (int i = 0; i < widget.selectedFriends.length; i++) {
                  if (widget.selectedFriends[i]) {
                    FlutterOpenWhatsapp.sendSingleMessage(
                        '91' + boysPhoneNumbers[i],
                        "Hi ${boysInfo[boysPhoneNumbers[i]]}! would you like to join us for ${widget.planName} on ${widget.date} at ${widget.time} ? Open app for more info");
                  }
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
