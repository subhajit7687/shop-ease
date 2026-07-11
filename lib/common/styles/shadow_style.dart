import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ShadowStyle {
  ShadowStyle._();

  static final verticalProductShadow = BoxShadow(
    color: CColors.darkGrey.withAlpha((255 * 0.1).toInt()),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: CColors.darkGrey.withAlpha((255 * 0.1).toInt()),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
}
