import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this._width,
    this._height,
    this._radius = CSizes.cardRadiusLg,
    this._child,
    this._showBorder = false,
    this._borderColor = CColors.borderPrimary,
    this._backgroundColor = CColors.white,
    this._padding,
    this._margin,
  });

  final double? _width, _height;
  final double _radius;
  final Widget? _child;
  final bool _showBorder;
  final Color _borderColor, _backgroundColor;
  final EdgeInsetsGeometry? _padding, _margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: _height,
      padding: _padding,
      margin: _margin,
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(_radius),
        border: _showBorder ? Border.all(color: _borderColor) : null,
      ),
      child: _child,
    );
  }
}
