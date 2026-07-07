import 'package:flutter/material.dart';

class SuccessScreenArgs {
  final String image, title, subtitle;
  final void Function(BuildContext) onPressed;

  SuccessScreenArgs({required this.image, required this.title, required this.subtitle, required this.onPressed});
}
