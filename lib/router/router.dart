import 'package:e_commerce/router/auth_routes.dart';
import 'package:e_commerce/router/common_routes.dart';
import 'package:e_commerce/router/dashboard_routes.dart';
import 'package:e_commerce/router/product_routes.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/router/settings_routes.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: RouteNames.onboarding.path,
  routes: [
    ...authRoutes,
    ...commonRoutes,
    ...dashboardRoutes,
    ...settingsRoutes,
    ...productRoutes,
  ],
);
