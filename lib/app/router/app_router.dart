// ignore_for_file: strict_raw_type

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_case/app/router/app_router_attributes.dart';
import 'package:mm_case/presentation/inspiration/view/inspiration_screen.dart';

@immutable
final class AppRouter {
  const AppRouter._();

  static CustomTransitionPage _buildPageWithSlideTransition({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(
        position: Tween(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      ),
    );
  }

  static final _router = GoRouter(
    routes: [
      GoRoute(
        name: AppRouterAttributes.inspirationPageName,
        path: AppRouterAttributes.inspirationPagePath,
        pageBuilder: (context, state) => _buildPageWithSlideTransition(context: context, state: state, child: InspirationScreen()),
      ),
    ],
  );

  static GoRouter get router => _router;
}
