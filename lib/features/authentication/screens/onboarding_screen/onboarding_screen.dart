import 'package:e_commerce/features/authentication/screens/onboarding_screen/logic/onboarding_cubit.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_screen/widgets/onboarding_next_button.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_screen/widgets/onboarding_page_indicator.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_screen/widgets/onboarding_page_item.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_screen/widgets/onboarding_skip_button.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<OnboardingCubit, int>(
        listener: (_, state) {
          if (state > 2) {
            context.go(RouteNames.login);
          }
        },
        child: Stack(
          children: [
            PageView(
              controller: context.read<OnboardingCubit>().pageController,
              onPageChanged: context
                  .read<OnboardingCubit>()
                  .updatePageIndicator,
              children: [
                OnboardingPageItem(
                  imageString: CImages.onboardingImage1,
                  title: CTextStrings.onBoardingTitle1,
                  subtitle: CTextStrings.onBoardingSubtitle1,
                ),
                OnboardingPageItem(
                  imageString: CImages.onboardingImage2,
                  title: CTextStrings.onBoardingTitle2,
                  subtitle: CTextStrings.onBoardingSubtitle2,
                ),
                OnboardingPageItem(
                  imageString: CImages.onboardingImage3,
                  title: CTextStrings.onBoardingTitle3,
                  subtitle: CTextStrings.onBoardingSubtitle3,
                ),
              ],
            ),

            OnboardingSkipButton(),
            OnboardingPageIndicator(),
            OnboardingNextButton(),
          ],
        ),
      ),
    );
  }
}
