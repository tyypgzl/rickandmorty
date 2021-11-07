// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CharacterViewModel on _CharacterViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_CharacterViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$allCharactersAtom =
      Atom(name: '_CharacterViewModelBase.allCharacters');

  @override
  AllCharacters get allCharacters {
    _$allCharactersAtom.reportRead();
    return super.allCharacters;
  }

  @override
  set allCharacters(AllCharacters value) {
    _$allCharactersAtom.reportWrite(value, super.allCharacters, () {
      super.allCharacters = value;
    });
  }

  final _$_fetchAllCharacterAsyncAction =
      AsyncAction('_CharacterViewModelBase._fetchAllCharacter');

  @override
  Future<void> _fetchAllCharacter() {
    return _$_fetchAllCharacterAsyncAction
        .run(() => super._fetchAllCharacter());
  }

  final _$_CharacterViewModelBaseActionController =
      ActionController(name: '_CharacterViewModelBase');

  @override
  void _changeLoading() {
    final _$actionInfo = _$_CharacterViewModelBaseActionController.startAction(
        name: '_CharacterViewModelBase._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$_CharacterViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
allCharacters: ${allCharacters}
    ''';
  }
}
