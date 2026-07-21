import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/dashboard/home/ui/widgets/home_header.dart';
import 'package:e_commerce/features/dashboard/home/ui/widgets/home_promo_slider.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: Column(
                children: [
                  HomePromoSlider(
                    banners: [
                      'assets/images/banners/image_1.png',
                      'assets/images/banners/image_2.png',
                      'assets/images/banners/image_3.png',
                    ],
                  ),
                  SizedBox(height: CSizes.spaceBetweenSections),
                  SectionHeading(
                    title: 'Popular Products',
                    onPressed: () => context.push(RouteNames.allProducts.path),
                  ),
                  SizedBox(height: CSizes.spaceBetweenItems),
                  CGridLayout(
                    itemCount: 4,
                    itemBuilder: (context, index) => ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
