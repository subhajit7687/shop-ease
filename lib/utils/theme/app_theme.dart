import 'package:e_commerce/utils/theme/custom/app_elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/custom/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static final lightThemeData = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static final darkThemeData = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
