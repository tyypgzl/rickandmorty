import 'package:rickandmorty/core/constants/enum/character_gender_enum.dart';
import 'package:rickandmorty/core/constants/enum/character_species_enum.dart';
import 'package:rickandmorty/core/constants/enum/character_status_enum.dart';

class CharacterFilters {
  final String? name;
  final CharacterStatus? status;
  final CharacterSpecies? species;
  final String? type;
  final CharacterGender? gender;

  CharacterFilters({
    this.name = '',
    this.status = CharacterStatus.empty,
    this.species = CharacterSpecies.empty,
    this.type = '',
    this.gender = CharacterGender.empty,
  });
}
