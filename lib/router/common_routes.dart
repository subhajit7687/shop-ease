import 'package:e_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:e_commerce/utils/path_args/success_screen_args.dart';
import 'package:go_router/go_router.dart';

final commonRoutes = <RouteBase>[
  GoRoute(
    path: RouteNames.successScreen.path,
    name: RouteNames.successScreen.name,
    builder: (context, state) =>
        SuccessScreen(successScreenArgs: state.extra as SuccessScreenArgs),
  ),
];
