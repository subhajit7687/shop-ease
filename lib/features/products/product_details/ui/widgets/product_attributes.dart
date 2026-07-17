import 'package:e_commerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/constants/colors.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        //   Selected Attribute Pricing and Description
        RoundedContainer(
          padding: EdgeInsets.all(CSizes.md),
          backgroundColor: isDark ? CColors.darkerGrey : CColors.grey,
          child: Column(
            children: [
              // Title, Price and Stock Status
              Row(
                children: [
                  SectionHeading(title: 'Variation', showButton: false),
                  SizedBox(width: CSizes.spaceBetweenItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ProductTitleText(title: 'Price : ', smallSize: true),

                          //   Actual Price
                          Text(
                            '₹300',
                            style: textTheme.titleSmall!.apply(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(width: CSizes.spaceBetweenItems),

                          //   Sale Price
                          ProductPriceText(price: '200'),
                        ],
                      ),

                      //   Stock
                      Row(
                        children: [
                          ProductTitleText(title: 'Stock : ', smallSize: true),
                          Text('In Stock', style: textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //   Variation Description
              ProductTitleText(
                title:
                    'This is the Description of the Product and it can go up to max 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        SizedBox(height: CSizes.spaceBetweenItems),

        //   Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Color', showButton: false),
            SizedBox(height: CSizes.spaceBetweenItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CChoiceChip(
                  label: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                CChoiceChip(
                  label: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                CChoiceChip(
                  label: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Size', showButton: false),
            SizedBox(height: CSizes.spaceBetweenItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CChoiceChip(
                  label: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                CChoiceChip(
                  label: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                CChoiceChip(
                  label: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
