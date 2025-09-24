import 'package:anime_app/core/utils/app_color.dart';
import 'package:anime_app/core/utils/app_image.dart';
import 'package:anime_app/core/utils/app_styles.dart';
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

class CustomTabBarView extends StatefulWidget {
  const CustomTabBarView({super.key});

  @override
  State<CustomTabBarView> createState() => _CustomTabBarViewState();
}

class _CustomTabBarViewState extends State<CustomTabBarView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;

  final List<String> tabs = [
    'All',
    'Popular',
    'Trending',
    'New Releases',
    'Top Rated',
    'Upcoming',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          selectedIndex = _tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          padding: EdgeInsets.zero,

          dividerColor: Colors.transparent,
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.transparent,
          labelPadding: const EdgeInsets.only(right: 20),

          tabs: List.generate(
            tabs.length,
            (index) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.navBarSelected
                    : AppColors.whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                tabs[index],
                style: selectedIndex == index
                    ? AppStyles.styleSemiBold16(context)
                    : AppStyles.styleBold16(context),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.5,
          child: TabBarView(
            controller: _tabController,
            children: [
              CustomAllTabWidget(),
              CustomAllTabWidget(),
              CustomAllTabWidget(),
              CustomAllTabWidget(),
              CustomAllTabWidget(),
              CustomAllTabWidget(),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomAllTabWidget extends StatelessWidget {
  const CustomAllTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Replace with actual content for the "All" tab
            SizedBox(height: 20),
            Text(
              'Content for the "All" tab goes here.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Image.asset(AppImage.cartoon1Image),
          ],
        ),
      ),
    );
  }
}
