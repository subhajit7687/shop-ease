import 'package:e_commerce/common/styles/shadow_style.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/common/widgets/images/rounded_image.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => context.push(RouteNames.productDetails.path),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(CSizes.productImageRadius),
          color: isDark ? CColors.darkGrey : CColors.white,
        ),
        child: Column(
          children: [
            RoundedContainer(
              height: 180,
              padding: EdgeInsets.all(CSizes.sm),
              backgroundColor: isDark ? CColors.dark : CColors.light,
              child: Stack(
                children: [
                  RoundedImage(
                    imageUrl:
                        'assets/images/products/faith-yarn-Wr0TpKqf26s-unsplash.jpg',
                  ),
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
                      radius: CSizes.sm,
                      backgroundColor: CColors.secondary.withAlpha(
                        (255 * 0.8).toInt(),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: CSizes.sm,
                        vertical: CSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: CColors.black),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: CSizes.spaceBetweenItems / 2),
            Padding(
              padding: EdgeInsets.only(left: CSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(title: 'Black T-Shirt', smallSize: true),
                  SizedBox(height: CSizes.spaceBetweenItems / 2),
                  BrandTitleWithVerifiedIcon(title: 'Generic',),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: CSizes.sm),
                  child: ProductPriceText(price: '300'),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: CColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(CSizes.cardRadiusMd),
                      bottomRight: Radius.circular(CSizes.productImageRadius),
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
    );
  }
}
