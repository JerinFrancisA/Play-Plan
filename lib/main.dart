import 'package:flutter/material.dart';
import 'package:play_plan/screens/login_screen.dart';

main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Play Plan',
        theme: ThemeData(
          primarySwatch: Colors.black,
        ),
        initialRoute: LoginScreen.routeName,
        routes: {
          LoginScreen.routeName: (context) => LoginScreen(),
        },
      ),
    );
