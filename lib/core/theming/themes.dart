import 'package:fall_detection/core/theming/colors.dart';
import 'package:flutter/material.dart';
// import 'package:q_app4/core/theming/colors.dart'
// import 'package:q_app/core/theming/colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,
      // secondary: AppColors.secondaryColor,
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
      titleLarge: TextStyle(color: Colors.black),
    ),
    // Customize other theme properties as needed
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black12,
    colorScheme: const ColorScheme.dark(
      primary: Colors.black12,
      secondary: Colors.black45,
    ),
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.grey),
      bodyMedium: TextStyle(color: Colors.grey),
      titleLarge: TextStyle(color: Colors.grey),
    ),
    // Customize other theme properties as needed
  );
}
