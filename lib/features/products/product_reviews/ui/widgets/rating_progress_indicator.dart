import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key, required this.text, required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Expanded(flex: 1, child: Text(text, style: textTheme.bodyMedium)),
        Expanded(
          flex: 11,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 11,
            backgroundColor: CColors.grey,
            valueColor: AlwaysStoppedAnimation(CColors.primary),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ],
    );
  }
}