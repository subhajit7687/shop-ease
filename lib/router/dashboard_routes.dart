import 'package:e_commerce/features/dashboard/home/ui/home_screen.dart';
import 'package:e_commerce/features/dashboard/profile/ui/profile_screen.dart';
import 'package:e_commerce/features/dashboard/store/ui/store_screen.dart';
import 'package:e_commerce/features/dashboard/tab_menu/ui/tab_menu_screen.dart';
import 'package:e_commerce/features/dashboard/wish_list/ui/wish_list_screen.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:go_router/go_router.dart';

final dashboardRoutes = StatefulShellRoute.indexedStack(
  builder: (context, state, navigationShell) =>
      TabMenuScreen(navigationShell: navigationShell),
  branches: [
    StatefulShellBranch(
      routes: [
        GoRoute(
          path: RouteNames.home.path,
          name: RouteNames.home.name,
          builder: (context, state) => HomeScreen(),
        ),
      ],
    ),
    StatefulShellBranch(
      routes: [
        GoRoute(
          path: RouteNames.store.path,
          name: RouteNames.store.name,
          builder: (context, state) => StoreScreen(),
        ),
      ],
    ),
    StatefulShellBranch(
      routes: [
        GoRoute(
          path: RouteNames.wishList.path,
          name: RouteNames.wishList.name,
          builder: (context, state) => WishListScreen(),
        ),
      ],
    ),
    StatefulShellBranch(
      routes: [
        GoRoute(
          path: RouteNames.profile.path,
          name: RouteNames.profile.name,
          builder: (context, state) => ProfileScreen(),
        ),
      ],
    ),
  ],
);
