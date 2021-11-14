import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rickandmorty/core/constants/enum/service_path_enum.dart';
import 'package:rickandmorty/core/exception/character_service_response_exception.dart';
import 'package:rickandmorty/core/extension/service_path_extension.dart';
import 'package:rickandmorty/feature/character/models/character/all_character_model.dart';
import 'package:rickandmorty/feature/character/models/pagination/pagination_model.dart';
import 'package:rickandmorty/feature/character/services/interface_character_service.dart';

class CharacterService extends ICharacterService {
  CharacterService(Dio dio) : super(dio);

  @override
  Future<AllCharacters> fetchCharacter(PaginationModel paginationModel) async {
    var queryParameters = {"page": paginationModel.page};
    final response = await dio.get(ServicePath.characterEndpoint.rawValue, queryParameters: queryParameters);

    if (response.statusCode == HttpStatus.ok) {
      return AllCharacters.fromJson(response.data);
    } else {
      throw CharacterServiceResponseException(response.statusCode);
    }
  }
}
