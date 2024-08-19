// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeAppearanceModel _$ChangeAppearanceModelFromJson(
        Map<String, dynamic> json) =>
    ChangeAppearanceModel(
      chooseTextAppearanceEnum: $enumDecode(
          _$ChooseTextAppearanceEnumEnumMap, json['chooseTextAppearanceEnum']),
      chooseActionAppearanceEnum: $enumDecode(
          _$ChooseActionAppearanceEnumEnumMap,
          json['chooseActionAppearanceEnum']),
    );

Map<String, dynamic> _$ChangeAppearanceModelToJson(
        ChangeAppearanceModel instance) =>
    <String, dynamic>{
      'chooseTextAppearanceEnum':
          _$ChooseTextAppearanceEnumEnumMap[instance.chooseTextAppearanceEnum]!,
      'chooseActionAppearanceEnum': _$ChooseActionAppearanceEnumEnumMap[
          instance.chooseActionAppearanceEnum]!,
    };

const _$ChooseTextAppearanceEnumEnumMap = {
  ChooseTextAppearanceEnum.face: 'face',
  ChooseTextAppearanceEnum.skin: 'skin',
  ChooseTextAppearanceEnum.hair: 'hair',
  ChooseTextAppearanceEnum.jawline: 'jawline',
  ChooseTextAppearanceEnum.eyes: 'eyes',
  ChooseTextAppearanceEnum.fitness: 'fitness',
  ChooseTextAppearanceEnum.fashion: 'fashion',
  ChooseTextAppearanceEnum.grooming: 'grooming',
};

const _$ChooseActionAppearanceEnumEnumMap = {
  ChooseActionAppearanceEnum.face: 'face',
  ChooseActionAppearanceEnum.skin: 'skin',
  ChooseActionAppearanceEnum.hair: 'hair',
  ChooseActionAppearanceEnum.jawline: 'jawline',
  ChooseActionAppearanceEnum.eyes: 'eyes',
  ChooseActionAppearanceEnum.fitness: 'fitness',
  ChooseActionAppearanceEnum.fashion: 'fashion',
  ChooseActionAppearanceEnum.grooming: 'grooming',
};
