import 'package:e_commerce/features/personalization/profile/ui/profile_screen.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:go_router/go_router.dart';

final settingsRoutes = <RouteBase>[
  GoRoute(
    path: RouteNames.profile.path,
    name: RouteNames.profile.name,
    builder: (context, state) => ProfileScreen(),
  ),
];
