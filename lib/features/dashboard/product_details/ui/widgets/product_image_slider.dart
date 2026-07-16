import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/custom_appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return CurvedEdges(
      child: Container(
        color: isDark ? CColors.darkGrey : CColors.light,
        child: Stack(
          children: [
            // Main Large Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(
                  CSizes.productImageRadius * 2,
                ),
                child: Center(
                  child: Image(
                    image: AssetImage(
                      'assets/images/products/mohamadreza-khashay-ziubUDopHmc-unsplash.jpg',
                    ),
                  ),
                ),
              ),
            ),

            //   Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: CSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => RoundedImage(
                    imageUrl:
                    'assets/images/products/dom-hill-nimElTcTNyY-unsplash.jpg',
                    width: 80,
                    backgroundColor: isDark
                        ? CColors.dark
                        : CColors.white,
                    border: Border.all(color: CColors.primary),
                    padding: EdgeInsets.all(CSizes.sm),
                  ),
                  separatorBuilder: (_, _) =>
                      SizedBox(width: CSizes.spaceBetweenItems),
                  itemCount: 6,
                ),
              ),
            ),

            //   Appbar Icons
            CustomAppbar(
              showBackArrow: true,
              actions: [
                CircularIcon(icon: Iconsax.heart5, color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}