import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtils.appBarHeight,
      right: CSizes.defaultSpace,
      child: TextButton(onPressed: () {}, child: Text('Skip')),
    );
  }
}
