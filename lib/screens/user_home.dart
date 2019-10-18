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
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 28.0, left: 28.0, right: 28.0, bottom: 14.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.8, 0.0),
                            colors: [
                              const Color(0xFFFFFFEE),
                              const Color(0xFF999999)
                            ],
                            tileMode: TileMode.repeated,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'PLAN',
                            style: kHeaderTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 14.0, left: 28.0, right: 28.0, bottom: 28.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.8, 0.0),
                            // 10% of the width, so there are ten blinds.
                            colors: [
                              const Color(0xFFFFFFEE),
                              const Color(0xFF999999)
                            ],
                            // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'VIEW PLANS',
                            style: kHeaderTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
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
