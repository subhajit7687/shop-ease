import 'package:e_commerce/features/dashboard/home/ui/widgets/home_header.dart';
import 'package:e_commerce/features/dashboard/home/ui/widgets/home_promo_slider.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

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
              child: HomePromoSlider(
                banners: [
                  'assets/images/banners/image_1.png',
                  'assets/images/banners/image_2.png',
                  'assets/images/banners/image_3.png',
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
