import 'package:anime_app/core/utils/app_color.dart';
import 'package:anime_app/core/utils/app_styles.dart';
import 'package:anime_app/features/home/presentation/widgets/custom_all_tab.dart';
import 'package:flutter/material.dart';

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
