import 'package:e_commerce/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/custom_appbar.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(
            icon: Iconsax.add,
            onPressed: () => context.go(RouteNames.home.path),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          children: [
            CGridLayout(itemCount: 4, itemBuilder: (_, index) => ProductCardVertical(),)
          ],
        ),),
      ),
    );
  }
}
