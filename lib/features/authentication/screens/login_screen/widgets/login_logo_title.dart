import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginLogoTitle extends StatelessWidget {
  const LoginLogoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          HelperFunctions.isDarkMode(context)
              ? CImages.darkAppLogo
              : CImages.lightAppLogo,
          width: DeviceUtils.getScreenWidth(context) * 0.4,
        ),
        Text('Welcome', style: theme.textTheme.headlineMedium),
        SizedBox(height: CSizes.sm),
        Text('Subtitle', style: theme.textTheme.bodyMedium),
      ],
    );
  }
}
