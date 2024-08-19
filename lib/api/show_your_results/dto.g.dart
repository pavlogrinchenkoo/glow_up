// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowYourResultsModel _$ShowYourResultsModelFromJson(
        Map<String, dynamic> json) =>
    ShowYourResultsModel(
      imageTextGroupEnum:
          $enumDecode(_$ImageTextGroupEnumEnumMap, json['imageTextGroupEnum']),
      rightTitle: json['rightTitle'] as String,
      subLeftTitle: json['subLeftTitle'] as String,
      leftTitle: json['leftTitle'] as String,
      colorGroupEnum:
          $enumDecode(_$ColorGroupEnumEnumMap, json['colorGroupEnum']),
    );

Map<String, dynamic> _$ShowYourResultsModelToJson(
        ShowYourResultsModel instance) =>
    <String, dynamic>{
      'imageTextGroupEnum':
          _$ImageTextGroupEnumEnumMap[instance.imageTextGroupEnum]!,
      'rightTitle': instance.rightTitle,
      'subLeftTitle': instance.subLeftTitle,
      'leftTitle': instance.leftTitle,
      'colorGroupEnum': _$ColorGroupEnumEnumMap[instance.colorGroupEnum]!,
    };

const _$ImageTextGroupEnumEnumMap = {
  ImageTextGroupEnum.mainClockImage: 'mainClockImage',
  ImageTextGroupEnum.mainGirlImage: 'mainGirlImage',
  ImageTextGroupEnum.mainManImage: 'mainManImage',
  ImageTextGroupEnum.mainFlowersImage: 'mainFlowersImage',
  ImageTextGroupEnum.mainStrongImage: 'mainStrongImage',
  ImageTextGroupEnum.faceEmotionImage: 'faceEmotionImage',
  ImageTextGroupEnum.faceCoolImage: 'faceCoolImage',
  ImageTextGroupEnum.faceSymmetryImage: 'faceSymmetryImage',
  ImageTextGroupEnum.faceNoseImage: 'faceNoseImage',
  ImageTextGroupEnum.faceJawlineImage: 'faceJawlineImage',
  ImageTextGroupEnum.skinQualityImage: 'skinQualityImage',
  ImageTextGroupEnum.skinHealthImage: 'skinHealthImage',
  ImageTextGroupEnum.skinStainImage: 'skinStainImage',
  ImageTextGroupEnum.skinDarkCircleImage: 'skinDarkCircleImage',
  ImageTextGroupEnum.skinAcneImage: 'skinAcneImage',
  ImageTextGroupEnum.hairThicknessImage: 'hairThicknessImage',
  ImageTextGroupEnum.hairHealthImage: 'hairHealthImage',
  ImageTextGroupEnum.hairShineImage: 'hairShineImage',
  ImageTextGroupEnum.hairStyleImage: 'hairStyleImage',
  ImageTextGroupEnum.hairVolumeImage: 'hairVolumeImage',
  ImageTextGroupEnum.eyesShapeImage: 'eyesShapeImage',
  ImageTextGroupEnum.eyesColorImage: 'eyesColorImage',
  ImageTextGroupEnum.eyesBrightnessImage: 'eyesBrightnessImage',
  ImageTextGroupEnum.eyesSymmetryImage: 'eyesSymmetryImage',
  ImageTextGroupEnum.eyesExpressivenessImage: 'eyesExpressivenessImage',
  ImageTextGroupEnum.fitnessBodyImage: 'fitnessBodyImage',
  ImageTextGroupEnum.fitnessMuscleImage: 'fitnessMuscleImage',
  ImageTextGroupEnum.fitnessStaminaImage: 'fitnessStaminaImage',
  ImageTextGroupEnum.fitnessFlexibilityImage: 'fitnessFlexibilityImage',
  ImageTextGroupEnum.fitnessStrengthImage: 'fitnessStrengthImage',
};

const _$ColorGroupEnumEnumMap = {
  ColorGroupEnum.black: 'black',
  ColorGroupEnum.lightGreen: 'lightGreen',
  ColorGroupEnum.pinkLight: 'pinkLight',
  ColorGroupEnum.blueLight: 'blueLight',
};

CardShowYourResultsModel _$CardShowYourResultsModelFromJson(
        Map<String, dynamic> json) =>
    CardShowYourResultsModel(
      showMainCardResultsModelList: (json['showMainCardResultsModelList']
              as List<dynamic>)
          .map((e) => ShowYourResultsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      showFaceCardResultsModelList: (json['showFaceCardResultsModelList']
              as List<dynamic>)
          .map((e) => ShowYourResultsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      showSkinCardResultsModelList: (json['showSkinCardResultsModelList']
              as List<dynamic>)
          .map((e) => ShowYourResultsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      showHairCardResultsModelList: (json['showHairCardResultsModelList']
              as List<dynamic>)
          .map((e) => ShowYourResultsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      showEyesCardResultsModelList: (json['showEyesCardResultsModelList']
              as List<dynamic>)
          .map((e) => ShowYourResultsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      showFitnessCardResultsModelList: (json['showFitnessCardResultsModelList']
              as List<dynamic>)
          .map((e) => ShowYourResultsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CardShowYourResultsModelToJson(
        CardShowYourResultsModel instance) =>
    <String, dynamic>{
      'showMainCardResultsModelList': instance.showMainCardResultsModelList,
      'showFaceCardResultsModelList': instance.showFaceCardResultsModelList,
      'showSkinCardResultsModelList': instance.showSkinCardResultsModelList,
      'showHairCardResultsModelList': instance.showHairCardResultsModelList,
      'showEyesCardResultsModelList': instance.showEyesCardResultsModelList,
      'showFitnessCardResultsModelList':
          instance.showFitnessCardResultsModelList,
    };
