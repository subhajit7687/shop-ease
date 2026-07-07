import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(CSizes.defaultSpace),
          child: Column(
            children: [
              Image.asset(
                CImages.onboardingImage3,
                width: DeviceUtils.getScreenWidth(context) * 0.6,
              ),
              SizedBox(height: CSizes.spaceBetweenSections),
              Text(
                'Password Reset Email Sent',
                style: textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: CSizes.spaceBetweenItems),
              Text(
                'Your Account Security is Our Top Priority! We\'ve Sent You a Secure Link to Safely Change Your Password and Keep Your Account Protected.',
                style: textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: CSizes.spaceBetweenSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).popUntil(
                      (route) => route.settings.name == RouteNames.login.name,
                    );
                  },
                  child: Text('Done'),
                ),
              ),
              SizedBox(height: CSizes.spaceBetweenItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Resend Email'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
