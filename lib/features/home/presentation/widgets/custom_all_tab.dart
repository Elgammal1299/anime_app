import 'package:anime_app/core/utils/app_image.dart';
import 'package:anime_app/core/utils/app_styles.dart';
import 'package:anime_app/features/home/data/models/anime_character+model.dart';
import 'package:anime_app/features/home/data/models/anime_move_model.dart';
import 'package:anime_app/features/home/presentation/widgets/custom_all_moves_item.dart';
import 'package:anime_app/features/home/presentation/widgets/custom_top_character_item.dart';
import 'package:flutter/material.dart';

class CustomAllTabWidget extends StatelessWidget {
  const CustomAllTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AnimeMoveModel> animeMoveList = [
      AnimeMoveModel(
        title: 'One Piece',
        supTitle: 'Action, Adventure',
        imageUrl: AppImage.cartoon2Image,
        rating: 4.7,
      ),
      AnimeMoveModel(
        title: 'Naruto',
        supTitle: 'Action, Adventure',
        imageUrl: AppImage.cartoon1Image,
        rating: 4.5,
      ),
      AnimeMoveModel(
        title: 'Attack on Titan',
        supTitle: 'Action, Drama',
        imageUrl: AppImage.cartoon3Image,
        rating: 4.8,
      ),
    ];
    final List<AnimeCharacterModel> animeCharacterList = [
      AnimeCharacterModel(
        title: 'Gon Freecss',
        supTitle: 'Hunter x Hunter',
        imageUrl: AppImage.gonFreecssImage,
      ),
      AnimeCharacterModel(
        title: 'Naruto Uzumaki',
        supTitle: 'Hokage',
        imageUrl: AppImage.narutoUzumakiImage,
      ),
      AnimeCharacterModel(
        title: 'Luffy',
        supTitle: 'One Piece',
        imageUrl: AppImage.luffyImage,
      ),
      AnimeCharacterModel(
        title: 'Cann',
        supTitle: 'Titan Shifter',
        imageUrl: AppImage.connImage,
      ),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: animeMoveList.length,
            itemBuilder: (context, index) {
              final anime = animeMoveList[index];
              return CustomAllMovesItem(anime: anime);
            },
          ),
        ),
        const SizedBox(height: 24),
        Align(
          alignment: AlignmentGeometry.centerLeft,
          child: Text(
            'Top Characters',
            style: AppStyles.styleSemiBold26(context),
          ),
        ),
        const SizedBox(height: 24),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: animeCharacterList.length,

            itemBuilder: (context, index) {
              return CustomTopCharacterItem(
                animeCharacter: animeCharacterList[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 20);
            },
          ),
        ),
      ],
    );
  }
}
