import 'package:anime_app/core/utils/app_styles.dart';
import 'package:anime_app/features/home/data/models/anime_character+model.dart';
import 'package:flutter/material.dart';

class CustomTopCharacterItem extends StatelessWidget {
  const CustomTopCharacterItem({super.key, required this.animeCharacter});
  final AnimeCharacterModel animeCharacter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(animeCharacter.imageUrl),
        ),
        const SizedBox(height: 8),
        Text(animeCharacter.title, style: AppStyles.styleBoldBlack16(context)),
        const SizedBox(height: 4),
        Text(animeCharacter.supTitle, style: AppStyles.styleRegular14(context)),
      ],
    );
  }
}
