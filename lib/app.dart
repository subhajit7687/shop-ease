import 'package:e_commerce/router/router.dart';
import 'package:e_commerce/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightThemeData,
      darkTheme: AppTheme.darkThemeData,
      routerConfig: appRouter,
    );
  }
}
