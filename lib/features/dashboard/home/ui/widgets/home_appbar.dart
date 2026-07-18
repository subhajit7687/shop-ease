import 'package:e_commerce/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_counter.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            CTextStrings.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: CColors.grey),
          ),
          Text(
            CTextStrings.homeAppbarSubtitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: CColors.white),
          ),
        ],
      ),
      actions: [
        CartCounter(
          onPressed: () => context.push(RouteNames.cart.path),
          iconColor: CColors.white,
        ),
      ],
    );
  }
}
