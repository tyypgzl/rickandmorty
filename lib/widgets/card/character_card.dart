import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rickandmorty/core/extension/context_extension.dart';
import 'package:rickandmorty/core/extension/string_extension.dart';
import 'package:rickandmorty/feature/character/models/character/character_model.dart';

class CharacterCardWidget extends StatelessWidget {
  final Character? character;
  const CharacterCardWidget({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.imageHeight,
      margin: context.paddingLow,
      padding: context.paddingMedium,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
      ),
      child: Row(
        children: [
          buildCharacterImage(context),
          Expanded(child: buildCharacterInfo(context)),
        ],
      ),
    );
  }

  ClipRRect buildCharacterImage(BuildContext context) {
    return ClipRRect(
      borderRadius: context.borderRadiusAllHigh,
      child: CachedNetworkImage(
        imageUrl: character?.image ?? '',
        height: context.imageHeight,
        width: context.imageWidth,
      ),
    );
  }

  Column buildCharacterInfo(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildCharacterName(context),
        buildCharacterGender(context),
        buidlCharacterStatus(context),
      ],
    );
  }

  Padding buildCharacterName(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Text(
        character!.name.toString().splitAndFetchTwoWord(),
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Padding buildCharacterGender(BuildContext context) {
    return Padding(
      padding: context.paddingMedium,
      child: Text(
        'Gender: ' + character!.gender.toString(),
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  Padding buidlCharacterStatus(BuildContext context) {
    return Padding(
      padding: context.paddingMedium,
      child: Text(
        'Status: ' + character!.status.toString(),
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
