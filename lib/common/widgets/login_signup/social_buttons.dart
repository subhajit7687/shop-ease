import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _LogoButton(imageString: CImages.google, onPressed: () {}),
        SizedBox(width: CSizes.spaceBetweenItems),
        _LogoButton(imageString: CImages.facebook, onPressed: () {}),
      ],
    );
  }
}

class _LogoButton extends StatelessWidget {
  const _LogoButton({required this._imageString, required this._onPressed});

  final String _imageString;
  final VoidCallback _onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: CColors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: _onPressed,
        icon: Image.asset(
          _imageString,
          height: CSizes.iconMd,
          width: CSizes.iconMd,
        ),
      ),
    );
  }
}
