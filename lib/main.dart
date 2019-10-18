import 'package:flutter/material.dart';
import 'package:play_plan/screens/login_screen.dart';

main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Play Plan',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.black,
          )
        ),
        initialRoute: LoginScreen.routeName,
        routes: {
          LoginScreen.routeName: (context) => LoginScreen(),
        },
      ),
    );
