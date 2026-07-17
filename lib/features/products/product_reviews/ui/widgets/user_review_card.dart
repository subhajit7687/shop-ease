import 'package:e_commerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user/profile.png'),
                ),
                SizedBox(width: CSizes.spaceBetweenItems),
                Text('John Doe', style: textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(height: CSizes.spaceBetweenItems),

        //   Review
        Row(
          children: [
            CRatingBarIndicator(rating: 4),
            SizedBox(width: CSizes.spaceBetweenItems),
            Text('01 Nov, 2025', style: textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: CSizes.spaceBetweenItems),

        ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great Job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: CColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: CColors.primary,
          ),
        ),
        SizedBox(height: CSizes.spaceBetweenItems),

        //   Company Review
        RoundedContainer(
          backgroundColor: isDark ? CColors.darkerGrey : CColors.grey,
          child: Padding(
            padding: EdgeInsets.all(CSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('E-Commerce', style: textTheme.titleMedium),
                    Text('02 Nov, 2025', style: textTheme.bodyMedium),
                  ],
                ),
                SizedBox(height: CSizes.spaceBetweenItems),
                ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great Job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: CColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: CColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: CSizes.spaceBetweenSections),
      ],
    );
  }
}
