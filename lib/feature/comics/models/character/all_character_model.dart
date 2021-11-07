import 'package:json_annotation/json_annotation.dart';
import 'package:rickandmorty/feature/comics/models/character/character_model.dart';
import 'package:rickandmorty/feature/comics/models/info/info_model.dart';

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
