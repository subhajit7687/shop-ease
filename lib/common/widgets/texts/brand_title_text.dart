import 'package:e_commerce/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    this.color,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      title,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: switch (brandTextSize) {
        TextSizes.small => textTheme.labelMedium!.apply(color: color),
        TextSizes.medium => textTheme.bodyLarge!.apply(color: color),
        TextSizes.large => textTheme.titleLarge!.apply(color: color),
      },
    );
  }
}
