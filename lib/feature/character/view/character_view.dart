import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rickandmorty/core/constants/enum/service_path_enum.dart';
import 'package:rickandmorty/core/extension/context_extension.dart';
import 'package:rickandmorty/core/extension/service_path_extension.dart';
import 'package:rickandmorty/feature/character/services/character_service.dart';
import 'package:rickandmorty/feature/character/viewmodel/character_view_model.dart';
import 'package:rickandmorty/widgets/card/character_card.dart';
import 'package:rickandmorty/widgets/card/shimmer_card.dart';

final CharacterViewModel _characterViewModel = CharacterViewModel(
  CharacterService(
    Dio(
      BaseOptions(
        baseUrl: ServicePath.baseUrl.rawValue,
      ),
    ),
  ),
);

class CharacterView extends StatefulWidget {
  const CharacterView({Key? key}) : super(key: key);

  @override
  State<CharacterView> createState() => _CharacterViewState();
}

class _CharacterViewState extends State<CharacterView> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController(initialScrollOffset: 0.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Observer(
        builder: (_) {
          return _characterViewModel.isLoading ? buildCharacterListView() : buildLoadingListView();
        },
      ),
    );
  }

  Widget buildCharacterListView() {
    return Scrollbar(
      controller: scrollController,
      thickness: 12,
      radius: context.radiusCircularMedium,
      notificationPredicate: (notification) {
        if (notification.metrics.pixels == notification.metrics.maxScrollExtent) {
          _characterViewModel.fetchPageingCharacter();
        }
        return true;
      },
      child: ListView.builder(
        itemCount: _characterViewModel.characherList?.length,
        itemBuilder: (context, index) {
          return CharacterCardWidget(character: _characterViewModel.characherList?[index]);
        },
      ),
    );
  }

  ListView buildLoadingListView() {
    return ListView.builder(
      itemCount: _characterViewModel.characherList?.length,
      itemBuilder: (context, index) {
        return const ShimmerCard();
      },
    );
  }
}
