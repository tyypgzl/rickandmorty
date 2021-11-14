import 'package:mobx/mobx.dart';
import 'package:rickandmorty/feature/character/models/character/all_character_model.dart';
import 'package:rickandmorty/feature/character/models/character/character_model.dart';
import 'package:rickandmorty/feature/character/models/pagination/pagination_model.dart';
import 'package:rickandmorty/feature/character/services/interface_character_service.dart';

part 'character_view_model.g.dart';

class CharacterViewModel = _CharacterViewModelBase with _$CharacterViewModel;

abstract class _CharacterViewModelBase with Store {
  @observable
  var isLoading = true;

  @observable
  var isFetchData = false;

  @observable
  var allCharacters = AllCharacters();

  @observable
  int pageNumber = 1;

  @observable
  List<Character>? characherList = <Character>[];

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
    allCharacters = await _service.fetchCharacter(PaginationModel(page: pageNumber));
    if (allCharacters.results != null) {
      characherList = characherList! + allCharacters.results!;
    }
    _changeLoading();
  }

  @action
  Future<void> fetchPageingCharacter() async {
    _pageNumberIncrement();
    allCharacters = await _service.fetchCharacter(PaginationModel(page: pageNumber));
    if (allCharacters.results != null) {
      characherList = (characherList! + allCharacters.results!);
    }
  }

  @action
  void _pageNumberIncrement() {
    if (pageNumber < allCharacters.info!.pages!) {
      pageNumber++;
    }
  }
}
