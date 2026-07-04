import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: DeviceUtils.bottomNavigationBarHeight,
      right: CSizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: HelperFunctions.isDarkMode(context)
              ? CColors.primary
              : CColors.black,
        ),
        onPressed: () {},
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
