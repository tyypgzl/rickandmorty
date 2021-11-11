class StringSplitingException<T> implements Exception {
  final T data;

  StringSplitingException(this.data);

  @override
  String toString() {
    return 'Incomig data is incorrect please check $data';
  }
}
