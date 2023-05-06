import 'package:flutter/material.dart';
import 'package:todo_cycle8_sat/shared_components/theme/colors.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: lightGreenColor,
    appBarTheme: AppBarTheme(
      color: primaryColor,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedIconTheme: IconThemeData(
        color: primaryColor,
        size: 34,
      ),
      selectedItemColor: primaryColor,
      unselectedIconTheme: IconThemeData(
        color: lightGreyColor,
        size: 34,
      ),
    ),
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
  );
}
