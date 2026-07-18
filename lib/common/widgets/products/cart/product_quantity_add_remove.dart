import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/circular_icon.dart';

class ProductQuantityWithAddRemove extends StatelessWidget {
  const ProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isDark = HelperFunctions.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: CSizes.md,
          color: isDark ? CColors.white : CColors.black,
          backgroundColor: isDark
              ? CColors.darkerGrey
              : CColors.light,
        ),
        SizedBox(width: CSizes.spaceBetweenItems),
        Text('2', style: textTheme.titleSmall),
        SizedBox(width: CSizes.spaceBetweenItems),
        CircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: CSizes.md,
          color: CColors.white,
          backgroundColor: CColors.primary,
        ),
      ],
    );
  }
}