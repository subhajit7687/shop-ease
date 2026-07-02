import 'package:flutter/material.dart';

class CChipTheme {
  const CChipTheme._();

  static final lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withAlpha((255 * 0.4).toInt()),
    labelStyle: TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,
  );

  static final darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,
  );
}
