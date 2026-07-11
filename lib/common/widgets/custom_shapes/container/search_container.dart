import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this._text,
    this._icon = Iconsax.search_normal,
    this._showBackground = true,
    this._showBorder = true,
  });

  final String _text;
  final IconData? _icon;
  final bool _showBackground, _showBorder;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
      child: Container(
        width: DeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(CSizes.md),
        decoration: BoxDecoration(
          color: _showBackground
              ? isDark
                    ? CColors.dark
                    : CColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(CSizes.cardRadiusLg),
          border: _showBorder ? Border.all(color: CColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(_icon, color: CColors.darkGrey),
            SizedBox(width: CSizes.spaceBetweenItems),
            Text(_text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}