import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app/core/widgets/not_found.dart';
import 'package:mobile_app/presentation/splash/splash.dart';
import 'package:mobile_app/routing/app_routes.dart';
import 'package:mobile_app/presentation/home/home_screen.dart';
import 'package:mobile_app/presentation/home/view_model/home_viewmodel.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: Routes.welcome,
        builder: (context, state) {
          return SplashPage();
        },
      ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) {
          final viewModel = HomeViewModel();
          return HomeScreen(
            viewModel: viewModel,
          );
        },
      ),
    ],
    errorBuilder: (context, state) {
      return NotFoundPage();
    },
  );
}
