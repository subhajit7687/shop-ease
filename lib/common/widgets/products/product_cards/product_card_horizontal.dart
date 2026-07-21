import 'package:e_commerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/common/widgets/images/rounded_image.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(CSizes.productImageRadius),
        color: isDark ? CColors.darkerGrey : CColors.softGrey,
      ),
      child: Row(
        children: [
          //   Thumbnail
          RoundedContainer(
            height: 120,
            padding: EdgeInsets.all(CSizes.sm),
            backgroundColor: isDark ? CColors.dark : CColors.light,
            child: Stack(
              children: [
                //   Thumbnail Image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: RoundedImage(
                    imageUrl:
                        'assets/images/products/hamed-darzi-Psz62UPYx1E-unsplash.jpg',
                    applyImageRadius: true,
                  ),
                ),

                //   Sale Tag
                Positioned(
                  top: 12,
                  child: RoundedContainer(
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
                ),

                //   Favorite Icon Button
                Positioned(
                  top: 0,
                  right: 0,
                  child: CircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),

          //   Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: CSizes.sm, left: CSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(title: 'Green T-Shirt', smallSize: true),
                      SizedBox(height: CSizes.spaceBetweenItems / 2),
                      BrandTitleWithVerifiedIcon(title: 'Generic'),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pricing
                      Flexible(child: ProductPriceText(price: '200')),

                      //   Add to Cart
                      Container(
                        decoration: BoxDecoration(
                          color: CColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(CSizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              CSizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: SizedBox(
                          width: CSizes.iconLg * 1.2,
                          height: CSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: CColors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
