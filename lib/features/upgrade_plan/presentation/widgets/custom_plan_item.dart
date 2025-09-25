
import 'package:anime_app/core/utils/app_color.dart';
import 'package:anime_app/core/utils/app_image.dart';
import 'package:anime_app/core/utils/app_styles.dart';
import 'package:anime_app/features/upgrade_plan/data/plan_model.dart';
import 'package:flutter/material.dart';

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
