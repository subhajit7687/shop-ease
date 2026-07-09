import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this._title,
    this._showBackArrow = false,
    this._leadingIcon,
    this._actions,
    this._leadingOnPressed,
  });

  final Widget? _title;
  final bool _showBackArrow;
  final IconData? _leadingIcon;
  final List<Widget>? _actions;
  final VoidCallback? _leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: CSizes.md),
      child: AppBar(
        automaticallyImplyActions: false,
        leading: _showBackArrow
            ? IconButton(
                onPressed: () => context.pop(),
                icon: Icon(Iconsax.arrow_left),
              )
            : _leadingIcon == null
            ? null
            : IconButton(
                onPressed: _leadingOnPressed,
                icon: Icon(_leadingIcon),
              ),
        title: _title,
        actions: _actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
