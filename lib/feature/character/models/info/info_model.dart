import 'package:json_annotation/json_annotation.dart';
part 'info_model.g.dart';

@JsonSerializable()
class Info {
  int? count;
  int? pages;
  String? next;

  Info({this.count, this.pages, this.next});

  factory Info.fromJson(Map<String, dynamic> json) {
    return _$InfoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$InfoToJson(this);
  }
}
