// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscribeModel _$SubscribeModelFromJson(Map<String, dynamic> json) =>
    SubscribeModel(
      subscribeTextGroupEnum: $enumDecode(
          _$SubscribeTextGroupEnumEnumMap, json['subscribeTextGroupEnum']),
      subscribePhotoGroupEnum: $enumDecode(
          _$SubscribePhotoGroupEnumEnumMap, json['subscribePhotoGroupEnum']),
    );

Map<String, dynamic> _$SubscribeModelToJson(SubscribeModel instance) =>
    <String, dynamic>{
      'subscribeTextGroupEnum':
          _$SubscribeTextGroupEnumEnumMap[instance.subscribeTextGroupEnum]!,
      'subscribePhotoGroupEnum':
          _$SubscribePhotoGroupEnumEnumMap[instance.subscribePhotoGroupEnum]!,
    };

const _$SubscribeTextGroupEnumEnumMap = {
  SubscribeTextGroupEnum.first: 'first',
  SubscribeTextGroupEnum.second: 'second',
  SubscribeTextGroupEnum.third: 'third',
  SubscribeTextGroupEnum.fourth: 'fourth',
};

const _$SubscribePhotoGroupEnumEnumMap = {
  SubscribePhotoGroupEnum.first: 'first',
  SubscribePhotoGroupEnum.second: 'second',
  SubscribePhotoGroupEnum.third: 'third',
  SubscribePhotoGroupEnum.fourth: 'fourth',
};
