import 'package:e_commerce/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce/features/dashboard/home/ui/widgets/home_appbar.dart';
import 'package:e_commerce/features/dashboard/home/ui/widgets/home_header_container.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeaderContainer(
              child: Column(
                children: [
                  HomeAppbar(),
                  SizedBox(height: CSizes.spaceBetweenSections),
                  SearchContainer(text: 'Search in Store'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
