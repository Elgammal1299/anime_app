import 'package:anime_app/core/router/app_routes.dart';
import 'package:anime_app/core/router/router_transitions.dart';
import 'package:anime_app/features/home/presentation/pages/details_page.dart';
import 'package:anime_app/features/home/presentation/pages/nav_bar_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.nvBarPageRouter:
        return RouterTransitions.buildHorizontal(const DetailsPage());

      default:
        return null;
    }
  }
}
