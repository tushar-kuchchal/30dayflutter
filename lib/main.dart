// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_tutorail/pages/home_page.dart';
import 'package:flutter_tutorail/pages/login.dart';
import 'package:flutter_tutorail/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoute.home,
      routes: {
        MyRoute.login: (context) => Login(),
        MyRoute.home: (context) => Home()
      },
    );
  }
}
