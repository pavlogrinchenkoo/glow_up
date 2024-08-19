// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryModel _$HistoryModelFromJson(Map<String, dynamic> json) => HistoryModel(
      isPhotoDeepScan: json['isPhotoDeepScan'] as bool,
      photo: json['photo'] as String,
      titleValue: (json['titleValue'] as num).toDouble(),
      subtitle: json['subtitle'] as String,
    );

Map<String, dynamic> _$HistoryModelToJson(HistoryModel instance) =>
    <String, dynamic>{
      'isPhotoDeepScan': instance.isPhotoDeepScan,
      'photo': instance.photo,
      'titleValue': instance.titleValue,
      'subtitle': instance.subtitle,
    };
