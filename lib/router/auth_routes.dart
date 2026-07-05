import 'package:e_commerce/features/authentication/screens/onboarding_screen/logic/onboarding_cubit.dart';
import 'package:e_commerce/features/authentication/screens/login_screen/login_screen.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_screen/onboarding_screen.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final authRoutes = <RouteBase>[
  GoRoute(
    path: RouteNames.onboarding,
    builder: (context, state) => BlocProvider(
      create: (_) => OnboardingCubit(),
      child: OnboardingScreen(),
    ),
  ),
  GoRoute(path: RouteNames.login, builder: (context, state) => LoginScreen()),
];
