import 'package:e_commerce/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/dashboard/home/ui/widgets/home_appbar.dart';
import 'package:e_commerce/features/dashboard/home/ui/widgets/home_header_container.dart';
import 'package:e_commerce/features/dashboard/home/ui/widgets/home_popular_categories.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomeHeaderContainer(
      child: Column(
        children: [
          HomeAppbar(),
          SizedBox(height: CSizes.spaceBetweenSections),
          SearchContainer(text: 'Search in Store'),
          SizedBox(height: CSizes.spaceBetweenSections),
    
          Padding(
            padding: EdgeInsets.only(left: CSizes.defaultSpace),
            child: Column(
              children: [
                SectionHeading(
                  title: 'Popular Categories',
                  showButton: false,
                  textColor: CColors.white,
                ),
                SizedBox(height: CSizes.spaceBetweenItems),
                HomePopularCategories(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}