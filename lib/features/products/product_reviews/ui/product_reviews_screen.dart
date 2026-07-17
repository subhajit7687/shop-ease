import 'package:e_commerce/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce/features/products/product_reviews/ui/widgets/overall_product_rating.dart';
import 'package:e_commerce/features/products/product_reviews/ui/widgets/user_review_card.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/ratings/rating_bar_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      // Appbar
      appBar: CustomAppbar(
        title: Text('Ratings and Reviews'),
        showBackArrow: true,
      ),

      //   Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ratings and reviews are verified and are from people use the same type of device that you use.',
              ),
              SizedBox(height: CSizes.spaceBetweenItems),

              //   Overall Product Ratings
              OverallProductRating(),
              CRatingBarIndicator(rating: 4.8),
              Text('199', style: textTheme.bodySmall),
              SizedBox(height: CSizes.spaceBetweenSections),

              //   User Reviews List
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
