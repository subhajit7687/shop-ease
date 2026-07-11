import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget {
  const ProductTitleText({
    super.key,
    required this._title,
    this._smallSize = false,
    this._maxLines = 2,
    this._textAlign = TextAlign.left,
  });

  final String _title;
  final bool _smallSize;
  final int _maxLines;
  final TextAlign? _textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: _smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: _maxLines,
      textAlign: _textAlign,
    );
  }
}
