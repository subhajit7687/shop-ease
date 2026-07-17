import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/products/product_details/ui/widgets/bottom_add_to_cart.dart';
import 'package:e_commerce/features/products/product_details/ui/widgets/product_attributes.dart';
import 'package:e_commerce/features/products/product_details/ui/widgets/product_image_slider.dart';
import 'package:e_commerce/features/products/product_details/ui/widgets/product_meta_data.dart';
import 'package:e_commerce/features/products/product_details/ui/widgets/rating_and_share.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
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
                  ProductAttributes(),
                  SizedBox(height: CSizes.spaceBetweenSections),

                  //   Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  SizedBox(height: CSizes.spaceBetweenSections),

                  //   Description
                  SectionHeading(title: 'Description', showButton: false),
                  SizedBox(height: CSizes.spaceBetweenItems),
                  ReadMoreText(
                    'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but I am adding this lines to test.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  //   Reviews
                  Divider(),
                  SizedBox(height: CSizes.spaceBetweenItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(title: 'Reviews (199)', showButton: false),
                      IconButton(
                        onPressed: () => context.push(RouteNames.productReviews.path),
                        icon: Icon(Iconsax.arrow_right_3),
                      ),
                    ],
                  ),
                  SizedBox(height: CSizes.spaceBetweenSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
