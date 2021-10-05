import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyTheme {

  static ThemeData lightTheme(BuildContext context) => ThemeData(

    cardColor: Colors.white,
    canvasColor: creamColor,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      // Icon Theme Data
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 50,
      ),
    ),
    // Icon data for every icon
    iconTheme: IconThemeData(
      color: darkBlushColor,
      size: 40,
    ),

    //Text Theme Data for light mode
    textTheme: TextTheme(
      headline1: TextStyle(
        color: darkBlushColor,
        fontSize: 50,
        fontWeight: FontWeight.w900,
      ),
        headline4: TextStyle(
            color: darkBlushColor,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),

        bodyText1: TextStyle(
            color: Colors.grey[800],
          ),
        ),


    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white38),
  );

  // Theme for Dark Screen
  static ThemeData darkTheme(BuildContext context) => ThemeData(

    canvasColor: Colors.grey[900],
    cardColor: darkBlushColor,
    //app Bar for dar theme
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      //AppBar Icon  for dark theme
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 50,
      ),
    ),
    // Icon data for every icon
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 40,
    ),
    // Text Theme for dark mode
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.white,
        fontSize: 50,
        fontWeight: FontWeight.w900,
      ),

      headline4: TextStyle(
          color: creamColor,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),

      bodyText1: const TextStyle(
          fontSize: 16,
          color: Colors.white70,
        ),
      ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black26),


  );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBlushColor = Color(0xFF0A0E21);

}