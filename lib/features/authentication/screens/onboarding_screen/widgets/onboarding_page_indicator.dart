import 'package:e_commerce/features/authentication/screens/onboarding_screen/logic/onboarding_cubit.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageIndicator extends StatelessWidget {
  const OnboardingPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: DeviceUtils.bottomNavigationBarHeight,
      left: CSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: context.read<OnboardingCubit>().pageController,
        onDotClicked: context.read<OnboardingCubit>().dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 6,
          activeDotColor: HelperFunctions.isDarkMode(context)
              ? CColors.light
              : CColors.dark,
        ),
      ),
    );
  }
}
