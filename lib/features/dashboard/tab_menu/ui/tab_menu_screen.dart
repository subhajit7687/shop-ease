import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class TabMenuScreen extends StatelessWidget {
  const TabMenuScreen({super.key, required this._navigationShell});

  final StatefulNavigationShell _navigationShell;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: _navigationShell,
      bottomNavigationBar: NavigationBar(
        elevation: 0,
        backgroundColor: isDarkMode ? CColors.black : CColors.white,
        indicatorColor: isDarkMode
            ? CColors.white.withAlpha((255 * 0.1).toInt())
            : CColors.black.withAlpha((255 * 0.1).toInt()),
        selectedIndex: _navigationShell.currentIndex,
        onDestinationSelected: (value) => _navigationShell.goBranch(
          value,
          initialLocation: value == _navigationShell.currentIndex,
        ),
        destinations: [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      ),
    );
  }
}
