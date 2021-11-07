import 'package:dio/dio.dart';
import 'package:rickandmorty/feature/comics/models/character/all_character_model.dart';

abstract class ICharacterService {
  final Dio dio;

  ICharacterService(this.dio);
  Future<AllCharacters> fetchCharacter();
}
