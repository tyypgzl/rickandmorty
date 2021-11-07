import 'package:rickandmorty/core/constants/api/api_constants.dart';
import 'package:rickandmorty/core/constants/enum/service_path_enum.dart';
import 'package:rickandmorty/core/exception/service_path_exception.dart';

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.baseUrl:
        return ApiConstants.instance.baseUrl;
      case ServicePath.episodeEndpoint:
        return ApiConstants.instance.episodeEndpoint;
      case ServicePath.characterEndpoint:
        return ApiConstants.instance.characterEndpoint;
      case ServicePath.locationEndPoint:
        return ApiConstants.instance.locationEndpoint;
      case ServicePath.pageEndpoint:
        return ApiConstants.instance.pageEndpoint;

      default:
        throw ServicePathException(this);
    }
  }
}
