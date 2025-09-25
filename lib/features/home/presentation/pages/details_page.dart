import 'package:anime_app/core/utils/app_color.dart';
import 'package:anime_app/core/utils/app_image.dart';
import 'package:anime_app/core/utils/app_styles.dart';
import 'package:anime_app/core/widget/custom_elevated_button.dart';
import 'package:anime_app/features/upgrade_plan/presentation/pages/up_grade_plan_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none, // مهم للصورة اللي فوق
          children: [
            Column(
              children: [
                Image.asset(
                  AppImage.detailsImage,
                  height: size / 1.7,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  color: AppColors.containerColor,
                  child: Column(
                    children: [
                      const SizedBox(height: 100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CustomRowItem(category: 'Dark Fantasy'),
                          SizedBox(width: 10),
                          CustomRowItem(category: 'Action'),
                          SizedBox(width: 10),
                          CustomRowItem(category: 'Adventure'),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Divider(
                        color: AppColors.greyColor,
                        thickness: 1,
                        height: 1,
                        endIndent: 20,
                        indent: 20,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.visibility,
                                color: AppColors.greyColor,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '1.5M views',
                                style: AppStyles.styleRegular14(
                                  context,
                                ).copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(width: 24),
                          Row(
                            children: [
                              Icon(
                                Icons.fireplace_outlined,
                                color: AppColors.greyColor,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '2K clap',
                                style: AppStyles.styleRegular14(
                                  context,
                                ).copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(width: 24),
                          Row(
                            children: [
                              Icon(
                                Icons.movie_creation_outlined,
                                color: AppColors.greyColor,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '4 Seasons',
                                style: AppStyles.styleRegular14(
                                  context,
                                ).copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Divider(
                        color: AppColors.greyColor,
                        thickness: 1,
                        height: 1,
                        endIndent: 20,
                        indent: 20,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(AppImage.vectorImage),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                              style: AppStyles.styleBoldBlack16(
                                context,
                              ).copyWith(color: AppColors.greyColor),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: width / 2 - 100,
              top: size / 1.7 - 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(AppImage.groupImage),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.navBarColor,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  text: "Preview",
                  icon: const Icon(
                    Icons.visibility_outlined,
                    color: AppColors.greyColor,
                    size: 20,
                  ),
                  borderRadius: 40,
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: CustomElevatedButton(
                  text: "Watch Now",
                  icon: const Icon(
                    Icons.play_arrow,
                    color: AppColors.greyColor,
                    size: 20,
                  ),
                  borderRadius: 40,
                  onPressed: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: const UpGradePlanPage(),
                      withNavBar: false,
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRowItem extends StatelessWidget {
  const CustomRowItem({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.grey2Color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(category, style: AppStyles.styleBoldBlack16(context)),
    );
  }
}
