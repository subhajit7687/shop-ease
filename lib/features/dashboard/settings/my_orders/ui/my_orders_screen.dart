import 'package:e_commerce/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce/features/dashboard/settings/my_orders/ui/widgets/orders_list_items.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text('My Orders', style: textTheme.headlineSmall),
      ),
      body: Padding(
        padding: EdgeInsets.all(CSizes.defaultSpace),

        //     Orders
        child: OrdersListItems(),
      ),
    );
  }
}
