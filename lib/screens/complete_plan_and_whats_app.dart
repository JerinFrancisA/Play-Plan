import 'package:flutter/material.dart';
import 'package:play_plan/utilities/constants.dart';
import 'package:play_plan/custom_widgets/button.dart';

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
        ),
        body: Container(
          child: Button(
            text: 'SEND WHATSAPP',
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
