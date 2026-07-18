import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/rounded_image.dart';
import '../../texts/brand_title_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        //   Image
        RoundedImage(
          imageUrl:
          'assets/images/products/ayo-ogunseinde-UqT55tGBqzI-unsplash.jpg',
          width: 60,
          height: 60,
          padding: EdgeInsets.all(CSizes.sm),
          backgroundColor: HelperFunctions.isDarkMode(context)
              ? CColors.darkerGrey
              : CColors.light,
        ),
        SizedBox(width: CSizes.spaceBetweenItems),

        //   Title, Price, Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BrandTitleWithVerifiedIcon(title: 'Generic'),
              Flexible(child: ProductTitleText(title: 'Black Jacket', maxLines: 1)),
              //   Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green ',
                      style: textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size ',
                      style: textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: '38 ',
                      style: textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}