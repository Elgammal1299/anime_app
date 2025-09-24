import 'package:anime_app/core/utils/app_image.dart';
import 'package:anime_app/core/utils/app_styles.dart';
import 'package:anime_app/features/home/presentation/widgets/custom_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFDEE3FF), Color(0xFFF9F8FD)],
              stops: [0.0, 2.0],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: SvgPicture.asset(AppImage.starIcon),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 23),
                    Text(
                      'Where Anime Comes Alive',
                      style: AppStyles.styleSemiBold26(context),
                    ),
                    const SizedBox(height: 24),
                    const CustomTabBarView(), // TabBar + TabBarView
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


