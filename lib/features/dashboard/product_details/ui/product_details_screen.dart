import 'package:e_commerce/features/dashboard/product_details/ui/widgets/product_image_slider.dart';
import 'package:e_commerce/features/dashboard/product_details/ui/widgets/product_meta_data.dart';
import 'package:e_commerce/features/dashboard/product_details/ui/widgets/rating_and_share.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //   1 - Product Image Slider
            ProductImageSlider(),

            //   2 - Product Details
            Padding(
              padding: EdgeInsets.only(
                right: CSizes.defaultSpace,
                bottom: CSizes.defaultSpace,
                left: CSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //   Rating & Share
                  RatingAndShare(),

                  //   Price, Title, Stock & Brand
                  ProductMetaData(),

                  //   Attributes
                  //   Checkout Button
                  //   Description
                  //   Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
