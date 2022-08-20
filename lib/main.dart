import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/details_add_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/on_boarding_screen.dart';
import 'screens/signup_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          toolbarHeight: 100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          iconTheme: IconThemeData(color: Colors.black),
          actionsIconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/home": (context) => OnBoardingScreen(),
        "/signup": (context) => const SignUpScreen(),
        "/login": (context) => const LoginScreen(),
        "/dashboard": (context) => HomeScreen(),
        "/detailsadd": (context) => const DetailsAdd(),
      },
    ),
  );
}
