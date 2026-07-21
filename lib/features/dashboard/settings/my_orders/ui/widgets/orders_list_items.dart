import 'package:e_commerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrdersListItems extends StatelessWidget {
  const OrdersListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    final textTheme = Theme.of(context).textTheme;

    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, _) => SizedBox(height: CSizes.spaceBetweenItems),
      itemCount: 10,
      itemBuilder: (_, index) => RoundedContainer(
        padding: EdgeInsets.all(CSizes.md),
        showBorder: true,
        backgroundColor: isDark ? CColors.dark : CColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row 1
            Row(
              children: [
                //   Icon
                Icon(Iconsax.ship),
                SizedBox(width: CSizes.spaceBetweenItems / 2),

                //   Status & Date
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Processing',
                      style: textTheme.bodyLarge!.apply(
                        color: CColors.primary,
                        fontWeightDelta: 1,
                      ),
                    ),
                    Text('07 Nov 2025', style: textTheme.headlineSmall),
                  ],
                ),

                Spacer(),

                //   Icon
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.arrow_right_34, size: CSizes.iconSm),
                ),
              ],
            ),

            SizedBox(height: CSizes.spaceBetweenItems),

            // Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //   Icon
                      Icon(Iconsax.tag),
                      SizedBox(width: CSizes.spaceBetweenItems / 2),

                      //   Status & Date
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order', style: textTheme.labelMedium),
                          Text('[#23rg5]', style: textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      //   Icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: CSizes.spaceBetweenItems / 2),

                      //   Status & Date
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shipping Date', style: textTheme.labelMedium),
                          Text('01 Dec 2025', style: textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
