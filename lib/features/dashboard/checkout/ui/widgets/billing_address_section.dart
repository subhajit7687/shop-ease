import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('SINESTA', style: textTheme.bodyLarge),
        SizedBox(height: CSizes.spaceBetweenItems / 2),

        Row(
          children: [
            Icon(Icons.phone, color: Colors.grey, size: 16),
            SizedBox(width: CSizes.spaceBetweenItems),
            Text('+91 12345 67890', style: textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: CSizes.spaceBetweenItems / 2),

        Row(
          children: [
            Icon(Icons.location_history, color: Colors.grey, size: 16),
            SizedBox(width: CSizes.spaceBetweenItems),
            Expanded(child: Text('New York, USA', style: textTheme.bodyMedium, softWrap: true)),
          ],
        ),
      ],
    );
  }
}
