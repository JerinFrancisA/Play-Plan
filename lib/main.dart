import 'package:flutter/material.dart';
import 'package:play_plan/screens/login_screen.dart';

main() => runApp(
      MaterialApp(
        title: 'Play Plan',
        theme: ThemeData.dark(),
        initialRoute: LoginScreen.routeName,
        routes: {
          LoginScreen.routeName: (context) => LoginScreen(),
        },
      ),
    );
