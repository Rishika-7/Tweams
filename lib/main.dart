import 'package:flutter/material.dart';
import 'package:trial/Screens/Login/login_screen.dart';
import 'package:trial/Screens/home/home.dart';
import 'package:trial/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tweams',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: kPrimaryColor),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: kPrimaryColor,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginScreen(),
    );
  }
}
