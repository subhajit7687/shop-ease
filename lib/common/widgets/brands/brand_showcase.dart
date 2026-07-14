

import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/container/rounded_container.dart';
import 'brand_card.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return RoundedContainer(
      showBorder: true,
      borderColor: CColors.darkerGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: CSizes.spaceBetweenItems),
      padding: EdgeInsets.all(CSizes.md),
      child: Column(
        children: [
          //   Brand with Products Count
          BrandCard(showBorder: false),
          SizedBox(height: CSizes.spaceBetweenItems),

          //   Brand Top 3 Product Images
          Row(
            children: [
              for(final i in images)
                Expanded(
                  child: RoundedContainer(
                    height: 100,
                    backgroundColor: isDark
                        ? CColors.darkerGrey
                        : CColors.light,
                    margin: EdgeInsets.only(right: CSizes.sm),
                    padding: EdgeInsetsGeometry.all(CSizes.md),
                    child: Image(
                      image: AssetImage(
                        i,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}