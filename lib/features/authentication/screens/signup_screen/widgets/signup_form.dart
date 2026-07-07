import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/signup_screen/widgets/signup_privacy_policy_text.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key, required this._formKey});

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: CSizes.spaceBetweenInputFields),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: CSizes.spaceBetweenInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: CSizes.spaceBetweenInputFields),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: CSizes.spaceBetweenInputFields),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Phone Number',
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: CSizes.spaceBetweenInputFields),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: CSizes.spaceBetweenSections),
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              SignupPrivacyPolicyText(),
            ],
          ),
          SizedBox(height: CSizes.spaceBetweenSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                context.push(RouteNames.verifyEmail.path);
              },
              child: Text('Create Account'),
            ),
          ),
          SizedBox(height: CSizes.spaceBetweenSections),
          FormDivider(text: 'Or Sign Up With'),
          SizedBox(height: CSizes.spaceBetweenSections),
          SocialButtons(),
        ],
      ),
    );
  }
}
