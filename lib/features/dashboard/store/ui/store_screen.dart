import 'package:e_commerce/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_counter.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppbar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [CartCounter(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            floating: true,
            backgroundColor: isDark ? CColors.black : CColors.white,
            expandedHeight: 440,
            flexibleSpace: Padding(
              padding: EdgeInsets.all(CSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  // Search Bar
                  SizedBox(height: CSizes.spaceBetweenItems),
                  SearchContainer(
                    text: 'Search in Store',
                    showBorder: true,
                    showBackground: false,
                    padding: EdgeInsets.zero,
                  ),
                  SizedBox(height: CSizes.spaceBetweenItems),

                  // Featured Brands
                  SectionHeading(title: 'Featured Brands', onPressed: () {}),
                  SizedBox(height: CSizes.spaceBetweenItems / 1.5),
                  CGridLayout(
                    mainAxisExtent: 80,
                    itemCount: 4,
                    itemBuilder: (_, index) => GestureDetector(
                      onTap: () {},
                      child: RoundedContainer(
                        padding: EdgeInsets.all(CSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            // Icon
                            Flexible(
                              child: CircularImage(
                                image:
                                    'assets/icons/categories/power-socket.png',
                                backgroundColor: Colors.transparent,
                                overlayColor: isDark
                                    ? CColors.white
                                    : CColors.black,
                              ),
                            ),
                            SizedBox(width: CSizes.spaceBetweenItems / 2),

                            // Text
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BrandTitleWithVerifiedIcon(
                                    title: 'Generic',
                                    brandTextSize: TextSizes.large,
                                  ),
                                  Text(
                                    '256 products',
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        body: Container(),
      ),
    );
  }
}
