import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class OnboardingPageItem extends StatelessWidget {
  const OnboardingPageItem({
    super.key,
    required this._imageString,
    required this._title,
    required this._subtitle,
  });

  final String _imageString, _title, _subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(CSizes.defaultSpace),
      child: Column(
        children: [
          Image.asset(
            _imageString,
            height: DeviceUtils.getScreenHeight(context) * 0.6,
            width: DeviceUtils.getScreenWidth(context) * 0.8,
          ),
          Text(
            _title,
            style: theme.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: CSizes.spaceBetweenItems),
          Text(
            _subtitle,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
