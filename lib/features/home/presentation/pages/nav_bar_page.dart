import 'package:anime_app/core/utils/app_color.dart';
import 'package:anime_app/core/utils/app_image.dart';
import 'package:anime_app/core/utils/app_styles.dart';
import 'package:anime_app/features/home/presentation/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
// class NavBarPage extends StatelessWidget {
//   const NavBarPage({super.key});

//   @override
//   Widget build(BuildContext context) {

//     return
//   }
// }
class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  final PersistentTabController _controller = PersistentTabController(
    initialIndex: 0,
  );

  List<Widget> _buildScreens() {
    return const [
      HomePage(),
      HomePage(),
      HomePage(),

      SettingsScreen(),
      SettingsScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppImage.homeSelectedIcon),
        textStyle: AppStyles.styleSemiBold16(context),
        inactiveIcon: SvgPicture.asset(AppImage.homeIcon),
        title: ("Home"),
        activeColorPrimary: AppColors.navBarSelected,
        activeColorSecondary: AppColors.whiteColor,
      ),
      PersistentBottomNavBarItem(
        textStyle: AppStyles.styleSemiBold16(context),
        icon: SvgPicture.asset(AppImage.librarySelectedIcon),
        inactiveIcon: SvgPicture.asset(AppImage.libraryIcon),
        title: ("Library"),
        activeColorPrimary: AppColors.navBarSelected,
        activeColorSecondary: AppColors.whiteColor,
      ),
      PersistentBottomNavBarItem(
        textStyle: AppStyles.styleSemiBold16(context),
        icon: SvgPicture.asset(AppImage.searchSelectedIcon),
        inactiveIcon: SvgPicture.asset(AppImage.searchIcon),
        title: ("Search"),
        activeColorPrimary: AppColors.navBarSelected,
        activeColorSecondary: AppColors.whiteColor,
      ),
      PersistentBottomNavBarItem(
        textStyle: AppStyles.styleSemiBold16(context),
        icon: SvgPicture.asset(AppImage.internetSelectedIcon),
        inactiveIcon: SvgPicture.asset(AppImage.internetIcon),
        title: ("Internet"),
        activeColorPrimary: AppColors.navBarSelected,
        activeColorSecondary: AppColors.whiteColor,
      ),
      PersistentBottomNavBarItem(
        textStyle: AppStyles.styleSemiBold16(context),
        icon: SvgPicture.asset(AppImage.settingSelectedIcon),
        inactiveIcon: SvgPicture.asset(AppImage.settingIcon),
        activeColorSecondary: AppColors.whiteColor,
        title: ("Settings"),
        activeColorPrimary: AppColors.navBarSelected,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineToSafeArea: true,
      backgroundColor: AppColors.whiteColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style7,
    );
  }
}

// ---------------------- Screens ----------------------

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: const Center(child: Text("This is the Settings Screen")),
    );
  }
}
