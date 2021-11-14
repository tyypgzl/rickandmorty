import 'package:rickandmorty/feature/character/models/info/info_model.dart';
import 'package:rickandmorty/feature/location/model/locaiton_model.dart';

class AllLocation {
  Info? info;
  List<Location?>? results;

  AllLocation({this.info, this.results});

  AllLocation.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
    if (json['results'] != null) {
      var results = <Location>[];
      json['results'].forEach((v) {
        results.add(Location.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (info != null) {
      data['info'] = info!.toJson();
    }
    if (results != null) {
      data['results'] = results!.map((v) => v!.toJson()).toList();
    }
    return data;
  }
}
