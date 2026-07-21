import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../custom_shapes/container/rounded_container.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return RoundedContainer(
      showBorder: true,
      backgroundColor: isDark ? CColors.dark : CColors.white,
      padding: EdgeInsets.only(
        top: CSizes.sm,
        bottom: CSizes.sm,
        right: CSizes.sm,
        left: CSizes.md,
      ),
      child: Row(
        children: [
          // TextField
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          //   Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: isDark
                    ? CColors.white.withValues(alpha: 0.5)
                    : CColors.dark.withValues(alpha: 0.5),
                backgroundColor: Colors.grey.withValues(alpha: 0.2),
                side: BorderSide(color: Colors.grey.withValues(alpha: 0.1)),
              ),
              onPressed: () {},
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}
