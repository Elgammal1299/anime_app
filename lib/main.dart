import 'package:anime_app/core/router/app_routes.dart';
import 'package:anime_app/core/router/route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimeApp());
}

class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime App',
      debugShowCheckedModeBanner: false,
     
      initialRoute: AppRoutes.nvBarPageRouter,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
