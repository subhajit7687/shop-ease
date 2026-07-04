import 'package:e_commerce/features/authentication/cubit/onboarding_cubit/onboarding_cubit.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtils.appBarHeight,
      right: CSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          context.read<OnboardingCubit>().skipPage();
        },
        child: Text('Skip'),
      ),
    );
  }
}
