class CharacterServiceResponseException<T> implements Exception {
  final T data;

  CharacterServiceResponseException(this.data);
  @override
  String toString() {
    return 'Response Status Error: $data';
  }
}
