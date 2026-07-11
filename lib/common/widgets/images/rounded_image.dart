import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this._width = double.infinity,
    this._height,
    required this._imageUrl,
    this._applyImageRadius = true,
    this._isNetworkImage = false,
    this._border,
    this._backgroundColor = CColors.light,
    this._fit = BoxFit.cover,
    this._padding,
    this._onPressed,
    this._borderRadius = CSizes.md,
  });

  final double? _width, _height, _borderRadius;
  final String _imageUrl;
  final bool _applyImageRadius, _isNetworkImage;
  final BoxBorder? _border;
  final Color _backgroundColor;
  final BoxFit? _fit;
  final EdgeInsetsGeometry? _padding;
  final VoidCallback? _onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onPressed,
      child: Container(
        height: _height,
        width: _width,
        padding: _padding,
        decoration: BoxDecoration(
          border: _border,
          color: _backgroundColor,
          borderRadius: BorderRadius.circular(_borderRadius!),
        ),
        child: ClipRRect(
          borderRadius: _applyImageRadius
              ? BorderRadius.circular(_borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: _isNetworkImage
                ? NetworkImage(_imageUrl)
                : AssetImage(_imageUrl),
            fit: _fit,
          ),
        ),
      ),
    );
  }
}
