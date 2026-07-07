import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
              Image.asset(CImages.onboardingImage1),
              SizedBox(height: CSizes.spaceBetweenSections),
              Text(
                'Verify your email address!',
                style: textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: CSizes.spaceBetweenItems),
              Text(
                'sinesta@sinesta.com',
                style: textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: CSizes.spaceBetweenItems),
              Text(
                'Congratulations! Your Account Awaits: Verify Your Email to Start Shopping and Experience a World of Unrivaled Deals and Personalized Offers.',
                style: textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: CSizes.spaceBetweenSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Continue'),
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
