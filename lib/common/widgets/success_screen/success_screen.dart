import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/path_args/success_screen_args.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this._successScreenArgs,
  });

  final SuccessScreenArgs _successScreenArgs;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              Image.asset(_successScreenArgs.image),
              SizedBox(height: CSizes.spaceBetweenSections),
              Text(
                _successScreenArgs.title,
                style: textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: CSizes.spaceBetweenItems),
              Text(
                _successScreenArgs.subtitle,
                style: textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: CSizes.spaceBetweenSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _successScreenArgs.onPressed(context),
                  child: Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
