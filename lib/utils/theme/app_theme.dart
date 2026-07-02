import 'package:e_commerce/utils/theme/custom/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static final lightThemeData = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    textTheme: AppTextTheme.lightTextTheme,
  );

  static final darkThemeData = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    textTheme: AppTextTheme.darkTextTheme,
  );
}
