import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    this._currencySign = '₹',
    required this._price,
    this._maxLine = 1,
    this._isLarge = false,
    this._lineThrough = false,
  });

  final String _currencySign, _price;
  final int _maxLine;
  final bool _isLarge, _lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      _currencySign + _price,
      maxLines: _maxLine,
      overflow: TextOverflow.ellipsis,
      style: _isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: _lineThrough ? TextDecoration.lineThrough : null,
            )
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: _lineThrough ? TextDecoration.lineThrough : null,
            ),
    );
  }
}