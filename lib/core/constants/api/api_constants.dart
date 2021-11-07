class ApiConstants {
  static ApiConstants? _instance;
  ApiConstants._();

  static ApiConstants get instance {
    if (_instance != null) {
      return _instance!;
    } else {
      _instance = ApiConstants._();
      return _instance!;
    }
  }

  final baseUrl = 'https://rickandmortyapi.com/api';
  final episodeEndpoint = '/episode';
  final locationEndpoint = '/location';
  final characterEndpoint = '/character';
  final pageEndpoint = '?page=';
}
