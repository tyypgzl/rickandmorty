import 'package:dio/dio.dart';
import 'package:rickandmorty/feature/character/models/character/all_character_model.dart';
import 'package:rickandmorty/feature/character/models/pagination/pagination_model.dart';

abstract class ICharacterService {
  final Dio dio;

  ICharacterService(this.dio);
  Future<AllCharacters> fetchCharacter(PaginationModel paginationModel);
}
