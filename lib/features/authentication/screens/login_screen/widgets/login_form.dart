import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key, required this._formKey});

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: 'Email',
            ),
          ),
          SizedBox(height: CSizes.spaceBetweenInputFields),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: 'Password',
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: CSizes.spaceBetweenInputFields / 2),
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              Text('Remember me'),
              Spacer(),
              TextButton(onPressed: () {}, child: Text('Forget Password')),
            ],
          ),
          SizedBox(height: CSizes.spaceBetweenSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text('Sign in')),
          ),
          SizedBox(height: CSizes.spaceBetweenItems),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: Text('Create account'),
            ),
          ),
        ],
      ),
    );
  }
}
