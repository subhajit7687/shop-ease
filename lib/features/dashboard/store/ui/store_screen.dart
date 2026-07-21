import 'package:e_commerce/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce/common/widgets/appbar/custom_tab_bar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_counter.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/dashboard/store/ui/widgets/category_tab.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/widgets/brands/brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
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
                    SectionHeading(
                      title: 'Featured Brands',
                      onPressed: () => context.push(RouteNames.allBrands.path),
                    ),
                    SizedBox(height: CSizes.spaceBetweenItems / 1.5),
                    CGridLayout(
                      mainAxisExtent: 80,
                      itemCount: 4,
                      itemBuilder: (_, index) => BrandCard(showBorder: true),
                    ),
                  ],
                ),
              ),

              //   Tabs
              bottom: CustomTabBar(
                tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ],
              ),
            ),
          ],

          // Body
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
