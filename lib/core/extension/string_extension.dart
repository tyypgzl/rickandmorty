import 'package:rickandmorty/core/exception/string_spliting_exception.dart';

///This extension splits the incoming word and returns the first 2 words

extension StringExtension on String {
  String splitAndFetchTwoWord() {
    var listString = split(' ');
    if (listString.length == 1) {
      return listString[0];
    } else if (listString.length > 1) {
      return listString[0] + " " + listString[1];
    }
    throw StringSplitingException(this);
  }
}
