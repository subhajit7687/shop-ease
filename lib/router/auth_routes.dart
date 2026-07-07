import 'package:e_commerce/features/authentication/screens/onboarding_screen/logic/onboarding_cubit.dart';
import 'package:e_commerce/features/authentication/screens/login_screen/login_screen.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_screen/onboarding_screen.dart';
import 'package:e_commerce/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:e_commerce/features/authentication/screens/verify_email/verify_email_screen.dart';
import 'package:e_commerce/router/route_names.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final authRoutes = <RouteBase>[
  GoRoute(
    path: RouteNames.onboarding.path,
    name: RouteNames.onboarding.name,
    builder: (context, state) => BlocProvider(
      create: (_) => OnboardingCubit(),
      child: OnboardingScreen(),
    ),
  ),
  GoRoute(
    path: RouteNames.login.path,
    name: RouteNames.login.name,
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: RouteNames.signup.path,
    name: RouteNames.signup.name,
    builder: (context, state) => SignupScreen(),
    routes: [
      GoRoute(
        path: 'verify_email',
        name: RouteNames.verifyEmail.name,
        builder: (context, state) => VerifyEmailScreen(),
      ),
    ],
  ),
];
