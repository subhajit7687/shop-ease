import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/painting.dart';

class CSpacingStyles {
  CSpacingStyles._();

  static const paddingWithAppBarHeight = EdgeInsets.only(
    top: CSizes.appBarHeight,
    left: CSizes.defaultSpace,
    bottom: CSizes.defaultSpace,
    right: CSizes.defaultSpace,
  );
}
