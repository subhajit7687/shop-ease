import 'package:e_commerce/router/route_names.dart';
import 'package:go_router/go_router.dart';

import '../features/products/product_details/ui/product_details_screen.dart';

final productRoutes = <RouteBase>[
  GoRoute(
    path: RouteNames.productDetails.path,
    name: RouteNames.productDetails.name,
    builder: (context, state) => ProductDetailsScreen(),
  ),
];
