import 'package:mobx/mobx.dart';
import 'package:rickandmorty/feature/comics/models/character/all_character_model.dart';
import 'package:rickandmorty/feature/comics/services/interface_character_service.dart';
part 'character_view_model.g.dart';

class CharacterViewModel = _CharacterViewModelBase with _$CharacterViewModel;

abstract class _CharacterViewModelBase with Store {
  @observable
  bool isLoading = true;

  @observable
  AllCharacters allCharacters = AllCharacters();

  final ICharacterService _service;

  _CharacterViewModelBase(this._service) {
    _fetchAllCharacter();
  }

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> _fetchAllCharacter() async {
    _changeLoading();
    allCharacters = await _service.fetchCharacter();
    _changeLoading();
  }
}
