import 'package:anime_app/core/utils/app_color.dart';
import 'package:anime_app/core/utils/app_styles.dart';
import 'package:anime_app/features/home/data/models/anime_move_model.dart';
import 'package:flutter/material.dart';

class CustomAllMovesItem extends StatelessWidget {
  const CustomAllMovesItem({super.key, required this.anime});

  final AnimeMoveModel anime;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),

      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  anime.imageUrl,
                  fit: BoxFit.cover,
                  width: 200,
                  height: 250,
                ),
              ),
              const SizedBox(height: 8),
              Text(anime.title, style: AppStyles.styleBoldBlack16(context)),
              const SizedBox(height: 4),
              Text(anime.supTitle, style: AppStyles.styleRegular14(context)),
            ],
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
              ),
              child: Row(
                children: [
                  Icon(Icons.star, color: AppColors.primaryColor, size: 16),
                  Text(
                    anime.rating.toString(),
                    style: AppStyles.styleRegular14(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
