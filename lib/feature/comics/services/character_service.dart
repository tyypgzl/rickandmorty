import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rickandmorty/core/constants/enum/service_path_enum.dart';
import 'package:rickandmorty/core/exception/character_service_response_exception.dart';
import 'package:rickandmorty/core/extension/service_path_extension.dart';
import 'package:rickandmorty/feature/comics/models/character/all_character_model.dart';
import 'package:rickandmorty/feature/comics/services/interface_character_service.dart';

class CharacterService extends ICharacterService {
  CharacterService(Dio dio) : super(dio);

  @override
  Future<AllCharacters> fetchCharacter() async {
    final response = await dio.get(ServicePath.characterEndpoint.rawValue);

    if (response.statusCode == HttpStatus.ok) {
      return AllCharacters.fromJson(response.data);
    } else {
      throw CharacterServiceResponseException(response.statusCode);
    }
  }
}
