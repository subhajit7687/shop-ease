import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SignupPrivacyPolicyText extends StatelessWidget {
  const SignupPrivacyPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final textHighlightColor = HelperFunctions.isDarkMode(context)
        ? CColors.white
        : CColors.primary;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'I agree to ', style: textTheme.bodySmall),
          TextSpan(
            text: 'Privacy Policy',
            style: textTheme.bodyMedium!.apply(
              color: textHighlightColor,
              decoration: TextDecoration.underline,
              decorationColor: textHighlightColor,
            ),
          ),
          TextSpan(text: ' and ', style: textTheme.bodySmall),
          TextSpan(
            text: 'Terms of use',
            style: textTheme.bodyMedium!.apply(
              color: textHighlightColor,
              decoration: TextDecoration.underline,
              decorationColor: textHighlightColor,
            ),
          ),
        ],
      ),
    );
  }
}
