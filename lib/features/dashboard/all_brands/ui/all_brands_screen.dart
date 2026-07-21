import 'package:e_commerce/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce/common/widgets/brands/brand_card.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: Text('Brands'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              //   Heading
              SectionHeading(title: 'Brands', showButton: false,),
              SizedBox(height: CSizes.spaceBetweenItems),

              //   Brands
              CGridLayout(
                mainAxisExtent: 80,
                itemCount: 10,
                itemBuilder: (_, index) => BrandCard(
                  showBorder: true,
                  onTap: () => context.push(RouteNames.brandProducts.path),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
