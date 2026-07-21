import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../product_cards/product_card_vertical.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField(
          initialValue: 'Name',
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items:
          [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity',
          ]
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: (value) {},
        ),
        SizedBox(height: CSizes.spaceBetweenSections),

        //   Products
        CGridLayout(
          itemCount: 4,
          itemBuilder: (_, index) => ProductCardVertical(),
        ),
      ],
    );
  }
}