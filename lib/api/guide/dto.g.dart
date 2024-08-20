// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuideModel _$GuideModelFromJson(Map<String, dynamic> json) => GuideModel(
      guideTextGroupEnum:
          $enumDecode(_$GuideTextGroupEnumEnumMap, json['guideTextGroupEnum']),
      guideImageGroupEnum: $enumDecode(
          _$GuideImageGroupEnumEnumMap, json['guideImageGroupEnum']),
      guideOnTapGroupEnum: $enumDecode(
          _$GuideOnTapGroupEnumEnumMap, json['guideOnTapGroupEnum']),
    );

Map<String, dynamic> _$GuideModelToJson(GuideModel instance) =>
    <String, dynamic>{
      'guideTextGroupEnum':
          _$GuideTextGroupEnumEnumMap[instance.guideTextGroupEnum]!,
      'guideImageGroupEnum':
          _$GuideImageGroupEnumEnumMap[instance.guideImageGroupEnum]!,
      'guideOnTapGroupEnum':
          _$GuideOnTapGroupEnumEnumMap[instance.guideOnTapGroupEnum]!,
    };

const _$GuideTextGroupEnumEnumMap = {
  GuideTextGroupEnum.face: 'face',
  GuideTextGroupEnum.skin: 'skin',
  GuideTextGroupEnum.hair: 'hair',
  GuideTextGroupEnum.jawline: 'jawline',
  GuideTextGroupEnum.eyes: 'eyes',
  GuideTextGroupEnum.fitness: 'fitness',
  GuideTextGroupEnum.fashion: 'fashion',
  GuideTextGroupEnum.makeup: 'makeup',
};

const _$GuideImageGroupEnumEnumMap = {
  GuideImageGroupEnum.face: 'face',
  GuideImageGroupEnum.skin: 'skin',
  GuideImageGroupEnum.hair: 'hair',
  GuideImageGroupEnum.jawline: 'jawline',
  GuideImageGroupEnum.eyes: 'eyes',
  GuideImageGroupEnum.fitness: 'fitness',
  GuideImageGroupEnum.fashion: 'fashion',
  GuideImageGroupEnum.makeup: 'makeup',
};

const _$GuideOnTapGroupEnumEnumMap = {
  GuideOnTapGroupEnum.face: 'face',
  GuideOnTapGroupEnum.skin: 'skin',
  GuideOnTapGroupEnum.hair: 'hair',
  GuideOnTapGroupEnum.jawline: 'jawline',
  GuideOnTapGroupEnum.eyes: 'eyes',
  GuideOnTapGroupEnum.fitness: 'fitness',
  GuideOnTapGroupEnum.fashion: 'fashion',
  GuideOnTapGroupEnum.makeup: 'makeup',
};
