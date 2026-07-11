import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this._width,
    this._height,
    this._size = CSizes.lg,
    required this._icon,
    this._color,
    this._backgroundColor,
    this._onPressed,
  });

  final double? _width, _height, _size;
  final IconData _icon;
  final Color? _color, _backgroundColor;
  final VoidCallback? _onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Container(
      width: _width,
      height: _height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: _backgroundColor ?? (isDark ? CColors.black : CColors.white),
      ),
      child: IconButton(
        onPressed: _onPressed,
        icon: Icon(_icon, color: _color, size: _size),
      ),
    );
  }
}
