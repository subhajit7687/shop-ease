import 'package:e_commerce/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../common/widgets/products/cart/product_quantity_add_remove.dart';

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
        child: ElevatedButton(onPressed: () {}, child: Text('Checkout ₹200')),
      ),
      body: Padding(
        padding: EdgeInsets.all(CSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (_, index) => Column(
            children: [
              CartItem(),
              SizedBox(height: CSizes.spaceBetweenItems),

              Row(
                children: [
                  SizedBox(width: 70),
                  //   Add Remove Buttons
                  ProductQuantityWithAddRemove(),
                  Spacer(),
                  ProductPriceText(price: '200'),
                ],
              ),
            ],
          ),
          separatorBuilder: (context, index) =>
              SizedBox(height: CSizes.spaceBetweenSections),
          itemCount: 4,
        ),
      ),
    );
  }
}
