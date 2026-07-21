import 'package:e_commerce/features/dashboard/all_brands/ui/all_brands_screen.dart';
import 'package:e_commerce/features/dashboard/all_products/ui/all_products_screen.dart';
import 'package:e_commerce/features/dashboard/brand_products/ui/brand_products_screen.dart';
import 'package:e_commerce/features/products/product_reviews/ui/product_reviews_screen.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:go_router/go_router.dart';

import '../features/products/product_details/ui/product_details_screen.dart';

final productRoutes = <RouteBase>[
  GoRoute(
    path: RouteNames.productDetails.path,
    name: RouteNames.productDetails.name,
    builder: (context, state) => ProductDetailsScreen(),
    routes: [
      GoRoute(
        path: 'reviews',
        name: RouteNames.productReviews.name,
        builder: (context, state) => ProductReviewsScreen(),
      ),
    ],
  ),

  GoRoute(
    path: RouteNames.allProducts.path,
    name: RouteNames.allProducts.name,
    builder: (context, state) => AllProductsScreen(),
  ),

  GoRoute(
    path: RouteNames.allBrands.path,
    name: RouteNames.allBrands.name,
    builder: (context, state) => AllBrandsScreen(),
  ),

  GoRoute(
    path: RouteNames.brandProducts.path,
    name: RouteNames.brandProducts.name,
    builder: (context, state) => BrandProductsScreen(),
  ),
];
