import 'package:e_commerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //   Price and Sale Price
        Row(
          children: [
            //   Sale Tag
            RoundedContainer(
              radius: CSizes.sm,
              backgroundColor: CColors.secondary.withValues(alpha: 0.8),
              padding: EdgeInsets.symmetric(
                horizontal: CSizes.sm,
                vertical: CSizes.xs,
              ),
              child: Text(
                '25%',
                style: textTheme.labelLarge!.apply(color: CColors.black),
              ),
            ),
            SizedBox(width: CSizes.spaceBetweenItems),

            //   Price
            Text(
              '₹300',
              style: textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(width: CSizes.spaceBetweenItems),
            ProductPriceText(price: '200', isLarge: true),
          ],
        ),
        SizedBox(height: CSizes.spaceBetweenItems / 1.5),

        //   Title
        ProductTitleText(title: 'Beige Coat'),
        SizedBox(height: CSizes.spaceBetweenItems / 1.5),

        //   Stock Status
        Row(
          children: [
            ProductTitleText(title: 'Status'),
            SizedBox(width: CSizes.spaceBetweenItems),
            Text('In Stock', style: textTheme.titleMedium),
          ],
        ),
        SizedBox(height: CSizes.spaceBetweenItems / 1.5),

        //   Brand
        Row(
          children: [
            CircularImage(
              image: 'assets/icons/categories/television.png',
              width: 32,
              height: 32,
              overlayColor: isDark ? CColors.white : CColors.black,
            ),
            BrandTitleWithVerifiedIcon(
              title: 'Generic',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
