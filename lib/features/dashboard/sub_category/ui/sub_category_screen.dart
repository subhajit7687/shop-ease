import 'package:e_commerce/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce/common/widgets/images/rounded_image.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: Text('Sports shirts'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              //   Banner
              RoundedImage(
                imageUrl:
                    'assets/images/products/hamed-darzi-Psz62UPYx1E-unsplash.jpg',
                width: double.infinity,
                height: 200,
                applyImageRadius: true,
              ),
              SizedBox(height: CSizes.spaceBetweenSections),

              //   Sub-Categories
              Column(
                children: [
                  //   Heading
                  SectionHeading(title: 'Sports shirts', onPressed: () {}),
                  SizedBox(height: CSizes.spaceBetweenItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, _) => SizedBox(width: CSizes.spaceBetweenItems,),
                      itemBuilder: (_, index) => ProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
