import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = const Color.fromARGB(255, 162, 29, 19);
  static Color primaryAccent = const Color.fromARGB(255, 120, 14, 14);
  static Color secondaryColor = const Color.fromARGB(255, 45, 45, 45);
  static Color secondaryAccent = const Color.fromARGB(255, 35, 35, 35);
  static Color titleColor = const Color.fromARGB(255, 200, 200, 200);
  static Color textColor = const Color.fromARGB(255, 150, 150, 150);
  static Color successColor = const Color.fromARGB(255, 9, 149, 110);
  static Color highlightColor = const Color.fromARGB(255, 212, 172, 13);
}

ColorScheme _scheme = ColorScheme.fromSeed(
    seedColor: AppColors.primaryColor,
);

ThemeData primaryTheme = ThemeData().copyWith(

  // seed color theme
  colorScheme: _scheme,

  // scaffold color
  scaffoldBackgroundColor: AppColors.secondaryAccent,

  // app bar theme colors
  appBarTheme: const AppBarTheme().copyWith(
    backgroundColor: AppColors.secondaryColor,
    foregroundColor: AppColors.textColor,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),

);