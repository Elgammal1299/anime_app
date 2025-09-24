import 'package:anime_app/core/utils/app_color.dart';
import 'package:anime_app/core/utils/app_image.dart';
import 'package:anime_app/core/utils/app_styles.dart';
import 'package:anime_app/core/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// موديل للخطة
class PlanModel {
  final String title;
  final String price;
  final String description;

  PlanModel({
    required this.title,
    required this.price,
    required this.description,
  });
}

class UpGradePlanPage extends StatefulWidget {
  const UpGradePlanPage({super.key});

  @override
  State<UpGradePlanPage> createState() => _UpGradePlanPageState();
}

class _UpGradePlanPageState extends State<UpGradePlanPage> {
  int selectedIndex = 0; // افتراضياً أول خطة مختارة

  final List<PlanModel> plans = [
    PlanModel(
      title: 'Monthly Plan',
      price: '\$9.99 /month',
      description: 'Include Family Sharing',
    ),
    PlanModel(
      title: 'Yearly Plan',
      price: '\$99.99 /year',
      description: 'Save 20% with yearly subscription',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Upgrade Plan', style: AppStyles.styleSemiBold26(context)),
              const SizedBox(height: 16),
              Image.asset(AppImage.rocketBoyImage, width: 200, height: 200),
              const SizedBox(height: 16),
              Text(
                'Seamless Anime Experience, Ad-Free.',
                style: AppStyles.styleSemiBold26(context),
              ),
              const SizedBox(height: 8),
              Text(
                'Enjoy unlimited anime streaming without interruptions.',
                style: AppStyles.styleRegular14(context),
              ),
              const SizedBox(height: 24),

              // بناء الخطط ديناميكيًا
              Column(
                children: List.generate(
                  plans.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: CustomPlanItem(
                        plan: plans[index],
                        isSelected: selectedIndex == index,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),
              CustomElevatedButton(
                borderRadius: 30,
                text: 'Continue',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomPlanItem extends StatelessWidget {
  final PlanModel plan;
  final bool isSelected;

  const CustomPlanItem({
    super.key,
    required this.plan,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.navBarColor : AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? AppColors.navBarColor : AppColors.greyColor,
          width: 2,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppImage.movieImage, width: 70, height: 70),
          const SizedBox(width: 22),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plan.title,
                  style: AppStyles.styleBold16(context).copyWith(
                    color: isSelected
                        ? AppColors.whiteColor
                        : AppColors.textColor,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  plan.price,
                  style: AppStyles.styleRegular14(context).copyWith(
                    color: isSelected
                        ? AppColors.whiteColor
                        : AppColors.textColor,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  plan.description,
                  style: AppStyles.styleRegular14(context).copyWith(
                    color: isSelected
                        ? AppColors.whiteColor
                        : AppColors.textColor,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.check_circle,
            color: isSelected ? AppColors.primaryColor : AppColors.greyColor,
          ),
        ],
      ),
    );
  }
}
