import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rickandmorty/core/constants/enum/service_path_enum.dart';
import 'package:rickandmorty/core/extension/service_path_extension.dart';
import 'package:rickandmorty/feature/comics/models/character/character_model.dart';
import 'package:rickandmorty/feature/comics/services/character_service.dart';
import 'package:rickandmorty/feature/comics/viewmodel/character_view_model.dart';
import 'package:rickandmorty/widgets/card/character_card.dart';
import 'package:rickandmorty/core/extension/context_extension.dart';
import 'package:rickandmorty/widgets/shimmer/shimmer_effect.dart';

final CharacterViewModel _characterViewModel = CharacterViewModel(
  CharacterService(
    Dio(
      BaseOptions(baseUrl: ServicePath.baseUrl.rawValue),
    ),
  ),
);

class CharacterView extends StatelessWidget {
  const CharacterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Observer(
        builder: (_) {
          return _characterViewModel.isLoading ? buildCharacterListView() : buildLoadingListView();
        },
      ),
    );
  }

  ListView buildCharacterListView() {
    return ListView.builder(
      itemCount: _characterViewModel.allCharacters.results?.length,
      itemBuilder: (context, index) {
        return CharacterCardWidget(character: _characterViewModel.allCharacters.results?[index] ?? Character());
      },
    );
  }

  ListView buildLoadingListView() {
    return ListView.builder(
      itemCount: _characterViewModel.allCharacters.results?.length,
      itemBuilder: (context, index) {
        return Container(
          height: context.imageHeight,
          margin: context.paddingLow,
          padding: context.paddingMedium,
          child: Expanded(
            child: Row(
              children: [
                ShimmerWidget.circular(
                  height: context.shimmerHeight,
                  width: context.shimmerWidth,
                  shapeBorder: RoundedRectangleBorder(borderRadius: context.borderRadiusAllHigh),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ShimmerWidget.rectangular(height: 24, width: context.width * .35),
                      ShimmerWidget.rectangular(height: 14, width: context.width * .25),
                      ShimmerWidget.rectangular(height: 14, width: context.width * .25),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


/*
Observer(
        builder: (_) {
          return _characterViewModel.isLoading ? buildCharacterListView() : _buildLoadingWidget();
        },
      ),


*/ 