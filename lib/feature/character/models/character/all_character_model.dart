import 'package:json_annotation/json_annotation.dart';
import 'package:rickandmorty/feature/character/models/info/info_model.dart';

import 'character_model.dart';

part 'all_character_model.g.dart';

@JsonSerializable()
class AllCharacters {
  Info? info;
  List<Character>? results;

  AllCharacters({this.info, this.results});

  factory AllCharacters.fromJson(Map<String, dynamic> json) {
    return _$AllCharactersFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AllCharactersToJson(this);
  }
}
