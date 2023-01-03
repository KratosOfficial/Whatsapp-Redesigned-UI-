import 'package:flutter/material.dart';

class mytheme{
  static const greenacent = Color(0xFF62c975);
  static const green  = Color(0xFF41c85a);
  static const black = Color(0xFF1d1d1d);
  static const grey = Color(0xFFEAEAEA);



  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(
    ),
    textTheme:TextTheme(),

  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(

    ),


  );
}