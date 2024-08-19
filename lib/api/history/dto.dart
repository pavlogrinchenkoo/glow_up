import 'package:json_annotation/json_annotation.dart';

part 'dto.g.dart';

@JsonSerializable()
class HistoryModel {
  bool isPhotoDeepScan;

  String photo;
  double titleValue;
  String subtitle;

  HistoryModel({
    required this.isPhotoDeepScan,
    required this.photo,
    required this.titleValue,
    required this.subtitle,
  });

  factory HistoryModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryModelToJson(this);
}
