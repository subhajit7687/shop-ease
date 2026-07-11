import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this._image,
    required this._title,
    this._textColor = CColors.white,
    this._backgroundColor,
    required this._onTap,
  });

  final String _image, _title;
  final Color _textColor;
  final Color? _backgroundColor;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: _onTap,
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            padding: EdgeInsets.all(CSizes.sm),
            decoration: BoxDecoration(
              color:
                  _backgroundColor ?? (isDark ? CColors.black : CColors.white),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Image.asset(
                _image,
                fit: BoxFit.cover,
                color: isDark ? CColors.light : CColors.dark,
              ),
            ),
          ),
          SizedBox(height: CSizes.spaceBetweenItems / 2),
          SizedBox(
            width: 55,
            child: Text(
              _title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: _textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
