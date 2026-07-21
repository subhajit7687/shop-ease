import 'package:e_commerce/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePopularCategories extends StatelessWidget {
  const HomePopularCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        separatorBuilder: (_, _) => SizedBox(width: CSizes.spaceBetweenItems),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => VerticalImageText(
          image: 'assets/icons/categories/drill.png',
          title: 'Shoes',
          onTap: () => context.push(RouteNames.subCategories.path),
        ),
      ),
    );
  }
}
