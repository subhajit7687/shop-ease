import 'package:e_commerce/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce/features/personalization/addresses/addresses_screen/ui/widgets/single_address.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(RouteNames.addNewAddress.path),
        backgroundColor: CColors.primary,
        child: Icon(Iconsax.add, color: CColors.white),
      ),
      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),
          child: Column(children: [SingleAddress(isSelected: true)]),
        ),
      ),
    );
  }
}
