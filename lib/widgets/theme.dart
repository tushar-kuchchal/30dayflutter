// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context)=>
    ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            titleTextStyle:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)
            
          ));
  static ThemeData darkTheme(BuildContext context)=>
    ThemeData(brightness: Brightness.dark);
}