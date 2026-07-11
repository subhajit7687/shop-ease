import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CGridLayout extends StatelessWidget {
  const CGridLayout({
    super.key,
    required this._itemCount,
    this._mainAxisExtent = 288,
    required this._itemBuilder,
  });

  final int _itemCount;
  final double? _mainAxisExtent;
  final Widget? Function(BuildContext context, int index) _itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _itemCount,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: CSizes.gridViewSpacing,
        crossAxisSpacing: CSizes.gridViewSpacing,
        mainAxisExtent: _mainAxisExtent,
      ),
      itemBuilder: _itemBuilder,
    );
  }
}
