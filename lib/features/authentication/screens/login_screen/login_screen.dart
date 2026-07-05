import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/features/authentication/screens/login_screen/widgets/login_footer.dart';
import 'package:e_commerce/features/authentication/screens/login_screen/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login_screen/widgets/login_logo_title.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginLogoTitle(),
              SizedBox(height: CSizes.spaceBetweenSections),
              LoginForm(formKey: _formKey),
              SizedBox(height: CSizes.spaceBetweenSections),
              FormDivider(),
              SizedBox(height: CSizes.spaceBetweenItems),
              LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
