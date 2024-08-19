// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'dto.g.dart';

@JsonSerializable()
class LoadDataPoint {
  String name;
  bool isActive;

  LoadDataPoint({required this.name, required this.isActive});

  factory LoadDataPoint.fromJson(Map<String, dynamic> json) =>
      _$LoadDataPointFromJson(json);

  Map<String, dynamic> toJson() => _$LoadDataPointToJson(this);
}
