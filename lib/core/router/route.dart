import 'package:anime_app/features/upgrade_plan/presentation/pages/up_grade_plan_page.dart';
import 'package:flutter/material.dart';
import 'package:anime_app/core/router/app_routes.dart';
import 'package:anime_app/core/router/router_transitions.dart';
import 'package:anime_app/features/home/presentation/pages/details_page.dart';
import 'package:anime_app/features/home/presentation/pages/nav_bar_page.dart';

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.nvBarPageRouter:
        return RouterTransitions.buildHorizontal(const NavBarPage());
      case AppRoutes.upGradePlanPageRoute:
        return RouterTransitions.buildVertical(const UpGradePlanPage());
      case AppRoutes.detailsPageRoute:
        return RouterTransitions.buildScale(const DetailsPage());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route not found"))),
        );
    }
  }
}
