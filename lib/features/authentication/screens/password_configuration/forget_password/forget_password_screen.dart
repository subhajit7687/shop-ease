import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsetsGeometry.all(CSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Forget password', style: textTheme.headlineMedium),
            SizedBox(height: CSizes.spaceBetweenItems),
            Text(
              'Don\'t worry sometimes people can forget too. Enter your email and we will send you a password reset link.',
              style: textTheme.labelMedium,
            ),
            SizedBox(height: CSizes.spaceBetweenSections * 2),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            SizedBox(height: CSizes.spaceBetweenSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.push(RouteNames.resetPassword.path),
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
