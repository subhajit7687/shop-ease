import 'package:e_commerce/utils/theme/custom/bottom_sheet_theme.dart';
import 'package:e_commerce/utils/theme/custom/checkbox_theme.dart';
import 'package:e_commerce/utils/theme/custom/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/custom/text_theme.dart';
import 'package:e_commerce/utils/theme/custom/appbar_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static final lightThemeData = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    textTheme: CTextTheme.lightTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: CAppbarTheme.lightAppBarTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: CCheckboxTheme.lightCheckboxTheme,
  );

  static final darkThemeData = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    textTheme: CTextTheme.darkTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: CAppbarTheme.darkAppBarTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: CCheckboxTheme.darkCheckboxTheme
  );
}
