import 'package:flutter/material.dart';

class CTextTheme {
  const CTextTheme._();

  static final lightTextTheme = TextTheme(
    //Headline
    headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),

    //Title
    titleLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
    titleSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),

    //Body
    bodyLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
    bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),

    //Label
    labelLarge: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
    labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
  );

  static final darkTextTheme = TextTheme(
    //Headline
    headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),

    //Title
    titleLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
    titleSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),

    //Body
    bodyLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
    bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),

    //Label
    labelLarge: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
    labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
  );
}
