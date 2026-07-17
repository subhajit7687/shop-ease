import 'package:e_commerce/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: CSizes.defaultSpace,
        vertical: CSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: isDark ? CColors.darkerGrey : CColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(CSizes.cardRadiusLg),
          topRight: Radius.circular(CSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                icon: Iconsax.minus,
                backgroundColor: CColors.darkGrey,
                width: 40,
                height: 40,
                color: CColors.white,
              ),
              SizedBox(width: CSizes.spaceBetweenItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              SizedBox(width: CSizes.spaceBetweenItems),
              CircularIcon(
                icon: Iconsax.add,
                backgroundColor: CColors.black,
                width: 40,
                height: 40,
                color: CColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(CSizes.md),
              backgroundColor: CColors.black,
              side: BorderSide(color: CColors.black),
            ),
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
