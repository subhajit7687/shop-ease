import 'package:e_commerce/utils/theme/custom/bottom_sheet_theme.dart';
import 'package:e_commerce/utils/theme/custom/checkbox_theme.dart';
import 'package:e_commerce/utils/theme/custom/chip_theme.dart';
import 'package:e_commerce/utils/theme/custom/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/custom/input_decoration_theme.dart';
import 'package:e_commerce/utils/theme/custom/outlined_button_theme.dart';
import 'package:e_commerce/utils/theme/custom/text_theme.dart';
import 'package:e_commerce/utils/theme/custom/appbar_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static final lightThemeData = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CTextTheme.lightTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: COutlinedButtonTheme.lightOutlinedButtonTheme,
    appBarTheme: CAppbarTheme.lightAppBarTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: CCheckboxTheme.lightCheckboxTheme,
    chipTheme: CChipTheme.lightChipTheme,
    inputDecorationTheme: CInputDecorationTheme.lightInputDecorationTheme,
  );

  static final darkThemeData = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: CTextTheme.darkTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: COutlinedButtonTheme.darkOutlinedButtonTheme,
    appBarTheme: CAppbarTheme.darkAppBarTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: CCheckboxTheme.darkCheckboxTheme,
    chipTheme: CChipTheme.darkChipTheme,
    inputDecorationTheme: CInputDecorationTheme.darkInputDecorationTheme,
  );
}
