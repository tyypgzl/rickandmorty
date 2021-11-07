// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllCharacters _$AllCharactersFromJson(Map<String, dynamic> json) =>
    AllCharacters(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllCharactersToJson(AllCharacters instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
