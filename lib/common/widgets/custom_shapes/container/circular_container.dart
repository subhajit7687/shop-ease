import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CCircularContainer extends StatelessWidget {
  const CCircularContainer({
    super.key,
    this._width = 400,
    this._height = 400,
    this._radius = 400,
    this._padding = 0,
    this._backgroundColor = CColors.white,
    this._child,
  });

  final double _width, _height, _radius, _padding;
  final Widget? _child;
  final Color _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: _height,
      padding: EdgeInsets.all(_padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_radius),
        color: _backgroundColor,
      ),
      child: _child,
    );
  }
}