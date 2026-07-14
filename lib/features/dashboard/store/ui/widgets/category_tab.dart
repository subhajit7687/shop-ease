import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children:[ Padding(
        padding: EdgeInsetsGeometry.all(CSizes.defaultSpace),
        child: Column(
          children: [
            //   Brands
            BrandShowcase(
              images: [
                'assets/images/products/ayo-ogunseinde-UqT55tGBqzI-unsplash.jpg',
                'assets/images/products/anomaly-WWesmHEgXDs-unsplash.jpg',
                'assets/images/products/irene-kredenets-dwKiHoqqxk8-unsplash.jpg',
              ],
            ),
            SizedBox(height: CSizes.spaceBetweenItems),

            //   Products
            SectionHeading(
              title: 'You might like',
              showButton: true,
              onPressed: () {},
            ),
            SizedBox(height: CSizes.spaceBetweenItems),

            CGridLayout(itemCount: 4, itemBuilder: (_, index) => ProductCardVertical(),),
            SizedBox(height: CSizes.spaceBetweenSections),
          ],
        ),
      )],
    );
  }
}
