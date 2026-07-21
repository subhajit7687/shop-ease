import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        //   Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: textTheme.bodyMedium),
            Text('₹250', style: textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: CSizes.spaceBetweenItems / 2),

        //   Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: textTheme.bodyMedium),
            Text('₹40', style: textTheme.labelLarge),
          ],
        ),
        SizedBox(height: CSizes.spaceBetweenItems / 2),

        //   Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: textTheme.bodyMedium),
            Text('₹3', style: textTheme.labelLarge),
          ],
        ),
        SizedBox(height: CSizes.spaceBetweenItems / 2),

        //   Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: textTheme.bodyMedium),
            Text('₹6', style: textTheme.titleMedium),
          ],
        ),
        SizedBox(height: CSizes.spaceBetweenItems / 2),
      ],
    );
  }
}
