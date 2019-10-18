import 'package:flutter/material.dart';
import 'package:play_plan/utilities/constants.dart';

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
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn8.dissolve.com/p/D1028_97_086/D1028_97_086_1200.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.darken),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  BigBox(
                      onTap: () {},
                      padding: const EdgeInsets.only(
                          top: 28.0, left: 28.0, right: 28.0, bottom: 14.0),
                      text: 'PLANS'),
                  BigBox(
                    text: 'VIEW PLANS',
                    onTap: () {},
                    padding: EdgeInsets.only(
                        top: 14.0, left: 28.0, right: 28.0, bottom: 28.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BigBox extends StatelessWidget {
  final onTap;
  final padding;
  final text;

  BigBox({@required this.onTap, @required this.padding, @required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 0.0),
              colors: [const Color(0xFFFFFFEE), const Color(0xFF999999)],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: kHeaderTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
