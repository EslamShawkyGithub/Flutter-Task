import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appTheme = new ThemeData(
      primaryColor: Color(0xFFFFFFFF),
      backgroundColor: Color(0xFFFFFFFF),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Color(0xffFFFFFF),
        ),
        color: Color(0xFFB2DFDB),
        textTheme: TextTheme(
          headline6: TextStyle(
           color: Color(0xffFFFFFF),
            fontSize: 18.0,
          ),

        ),
        centerTitle: false,

  ),
      iconTheme: IconThemeData(
        color: Color(0xff000000)
      ),
      fontFamily: 'Almarai',
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 24.0,
          fontFamily: 'Almarai',
          fontWeight: FontWeight.bold,
          color: Color(0xFF000000),
          height: 1.714,
          letterSpacing: 1.2,
        ),
        bodyText1: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Almarai',
            color: Colors.grey.shade600),
        bodyText2: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Almarai',
            letterSpacing: 1.0,
            height: 1.5),
      ));
}
