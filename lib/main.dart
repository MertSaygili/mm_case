import 'package:flutter/material.dart';
import 'package:mm_case/app/constants/app_strings.dart';
import 'package:mm_case/app/router/app_router.dart';
import 'package:mm_case/app/theme/custom_dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: AppStrings.appName,
      theme: CustomDarkTheme.themeData,
      debugShowCheckedModeBanner: false,
    );
  }
}
