import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../common/widgets/custom_shapes/container/rounded_container.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    final textTheme = Theme.of(context).textTheme;

    return RoundedContainer(
      padding: EdgeInsets.all(CSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: isSelected
          ? CColors.primary.withValues(alpha: 0.5)
          : Colors.transparent,
      borderColor: isSelected
          ? Colors.transparent
          : isDark
          ? CColors.darkerGrey
          : CColors.grey,
      margin: EdgeInsets.only(bottom: CSizes.spaceBetweenItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              isSelected ? Iconsax.tick_circle5 : null,
              color: isDark ? CColors.light : CColors.dark,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SINESTA',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textTheme.titleLarge,
              ),
              SizedBox(height: CSizes.sm / 2),
              Text(
                '+91 12345 67890',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: CSizes.sm / 2),
              Text('124 New York, United States', softWrap: true),
              SizedBox(height: CSizes.sm / 2),
            ],
          ),
        ],
      ),
    );
  }
}
