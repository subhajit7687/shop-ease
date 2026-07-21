import 'package:e_commerce/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce/features/dashboard/cart/ui/widgets/cart_items.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text('Cart', style: textTheme.headlineSmall),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => context.push(RouteNames.checkout.path),
          child: Text('Checkout ₹200'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(CSizes.defaultSpace),
        child: CartItems(),
      ),
    );
  }
}
