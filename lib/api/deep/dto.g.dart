// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeepModel _$DeepModelFromJson(Map<String, dynamic> json) => DeepModel(
      deepTextGroupEnum:
          $enumDecode(_$DeepTextGroupEnumEnumMap, json['deepTextGroupEnum']),
      deepTitleGroupEnum:
          $enumDecode(_$DeepTitleGroupEnumEnumMap, json['deepTitleGroupEnum']),
      deepPhotoGroupEnum:
          $enumDecode(_$DeepPhotoGroupEnumEnumMap, json['deepPhotoGroupEnum']),
    );

Map<String, dynamic> _$DeepModelToJson(DeepModel instance) => <String, dynamic>{
      'deepTextGroupEnum':
          _$DeepTextGroupEnumEnumMap[instance.deepTextGroupEnum]!,
      'deepTitleGroupEnum':
          _$DeepTitleGroupEnumEnumMap[instance.deepTitleGroupEnum]!,
      'deepPhotoGroupEnum':
          _$DeepPhotoGroupEnumEnumMap[instance.deepPhotoGroupEnum]!,
    };

const _$DeepTextGroupEnumEnumMap = {
  DeepTextGroupEnum.first: 'first',
  DeepTextGroupEnum.second: 'second',
  DeepTextGroupEnum.third: 'third',
  DeepTextGroupEnum.fourth: 'fourth',
};

const _$DeepTitleGroupEnumEnumMap = {
  DeepTitleGroupEnum.first: 'first',
  DeepTitleGroupEnum.second: 'second',
  DeepTitleGroupEnum.third: 'third',
  DeepTitleGroupEnum.fourth: 'fourth',
};

const _$DeepPhotoGroupEnumEnumMap = {
  DeepPhotoGroupEnum.first: 'first',
  DeepPhotoGroupEnum.second: 'second',
  DeepPhotoGroupEnum.third: 'third',
  DeepPhotoGroupEnum.fourth: 'fourth',
};
