import 'package:flutter/material.dart';

//Colors
Color bgColor = const Color(0xffEBEBEB);
Color secondaryColor = const Color(0xffFFDC82);
Color buttonColor = const Color(0xffFE810F);

// Strings
String bgImage = 'assets/background.png';
String logoImage = 'assets/logo.png';

//themes

class Themes {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: MaterialColor(
      2,
      {
        1: bgColor,
        2: secondaryColor,
      },
    ),
  );

  static ThemeData darkTheme = ThemeData.dark();
}
