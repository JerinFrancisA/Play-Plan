import 'package:flutter/material.dart';
import 'package:play_plan/custom_widgets/bigbox.dart';
import 'package:play_plan/screens/plan_page.dart';
import 'package:play_plan/screens/view_plan_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Plan',
                ),
                Tab(
                  text: 'View Plans',
                ),
              ],
            ),
            title: Text('We Plan'),
          ),
          body: TabBarView(
            children: [
              PlanPage(),
              ViewPlanPage(),
            ],
          ),
        ),
      ),
    );
  }
}
