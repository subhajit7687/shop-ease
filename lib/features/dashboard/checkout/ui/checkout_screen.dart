import 'package:e_commerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/features/dashboard/cart/ui/widgets/cart_items.dart';
import 'package:e_commerce/features/dashboard/checkout/ui/widgets/billing_address_section.dart';
import 'package:e_commerce/features/dashboard/checkout/ui/widgets/billing_payment_section.dart';
import 'package:e_commerce/features/dashboard/checkout/ui/widgets/billing_amount_section.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:e_commerce/utils/path_args/success_screen_args.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/widgets/appbar/custom_appbar.dart';
import '../../../../common/widgets/products/cart/coupon_code.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isDark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text('Over Review', style: textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(CSizes.defaultSpace),
          child: Column(
            children: [
              // Items in Cart
              CartItems(showButtons: false),
              SizedBox(height: CSizes.spaceBetweenSections),

              //   Coupon
              CouponCode(),
              SizedBox(height: CSizes.spaceBetweenSections),

              //   Billing
              RoundedContainer(
                padding: EdgeInsets.all(CSizes.md),
                showBorder: true,
                backgroundColor: isDark ? CColors.black : CColors.white,
                child: Column(
                  children: [
                    //   Pricing
                    BillingAmountSection(),
                    SizedBox(height: CSizes.spaceBetweenItems),

                    //   Divider
                    Divider(),
                    SizedBox(height: CSizes.spaceBetweenItems),

                    //   Payment Methods
                    BillingPaymentSection(),
                    SizedBox(height: CSizes.spaceBetweenItems),

                    //   Address
                    BillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsGeometry.all(CSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => context.go(
            RouteNames.successScreen.path,
            extra: SuccessScreenArgs(
              image: 'assets/logo/logo_light.png',
              title: 'Payment Success!',
              subtitle: 'Your item will be shipped soon',
              onPressed: (ctx) => ctx.go(RouteNames.home.path),
            ),
          ),
          child: Text('Checkout'),
        ),
      ),
    );
  }
}
