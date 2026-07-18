import 'package:e_commerce/features/personalization/addresses/add_new_address/ui/add_new_address_screen.dart';
import 'package:e_commerce/features/personalization/addresses/addresses_screen/ui/addresses_screen.dart';
import 'package:e_commerce/features/personalization/profile/ui/profile_screen.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:go_router/go_router.dart';

final settingsRoutes = <RouteBase>[
  GoRoute(
    path: RouteNames.profile.path,
    name: RouteNames.profile.name,
    builder: (context, state) => ProfileScreen(),
  ),
  GoRoute(
    path: RouteNames.addresses.path,
    name: RouteNames.addresses.name,
    builder: (context, state) => AddressesScreen(),
    routes: [
      GoRoute(
        path: 'new_address',
        name: RouteNames.addNewAddress.name,
        builder: (context, state) => AddNewAddressScreen(),
      ),
    ],
  ),
];
