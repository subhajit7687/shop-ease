import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/products/cart/product_quantity_add_remove.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showButtons = true});

  final bool showButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) => Column(
        children: [
          CartItem(),
          if (showButtons) SizedBox(height: CSizes.spaceBetweenItems),

          if (showButtons)
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
      itemCount: 2,
    );
  }
}
