import 'package:rickandmorty/feature/comics/models/episode/episode_model.dart';
import 'package:rickandmorty/feature/comics/models/info/info_model.dart';

class AllEpisode {
  Info? info;
  List<Episode?>? results;

  AllEpisode({this.info, this.results});

  AllEpisode.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
    if (json['results'] != null) {
      var results = <Episode>[];
      json['results'].forEach((v) {
        results.add(Episode.fromJson(v));
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
