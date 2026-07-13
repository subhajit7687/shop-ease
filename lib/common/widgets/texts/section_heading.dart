import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this._title,
    this._buttonTitle = 'View all',
    this._onPressed,
    this._showButton = true,
    this._textColor,
  });

  final String _title, _buttonTitle;
  final VoidCallback? _onPressed;
  final bool _showButton;
  final Color? _textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          _title,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.apply(color: _textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (_showButton)
          TextButton(onPressed: _onPressed, child: Text(_buttonTitle)),
      ],
    );
  }
}
