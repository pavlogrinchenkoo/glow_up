import 'dart:io';

import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/style.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dto.g.dart';

@JsonSerializable()
class ShowYourResultsModel {
  ImageTextGroupEnum imageTextGroupEnum;
  String rightTitle;
  String subLeftTitle;
  String leftTitle;
  ColorGroupEnum colorGroupEnum;

  ShowYourResultsModel({
    required this.imageTextGroupEnum,
    required this.rightTitle,
    required this.subLeftTitle,
    required this.leftTitle,
    required this.colorGroupEnum,
  });

  factory ShowYourResultsModel.fromJson(Map<String, dynamic> json) =>
      _$ShowYourResultsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ShowYourResultsModelToJson(this);
}

@JsonSerializable()
class CardShowYourResultsModel {
  List<ShowYourResultsModel> showMainCardResultsModelList;
  List<ShowYourResultsModel> showFaceCardResultsModelList;
  List<ShowYourResultsModel> showSkinCardResultsModelList;
  List<ShowYourResultsModel> showHairCardResultsModelList;
  List<ShowYourResultsModel> showEyesCardResultsModelList;
  List<ShowYourResultsModel> showFitnessCardResultsModelList;

  CardShowYourResultsModel({
    required this.showMainCardResultsModelList,
    required this.showFaceCardResultsModelList,
    required this.showSkinCardResultsModelList,
    required this.showHairCardResultsModelList,
    required this.showEyesCardResultsModelList,
    required this.showFitnessCardResultsModelList,
  });

  factory CardShowYourResultsModel.fromJson(Map<String, dynamic> json) =>
      _$CardShowYourResultsModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardShowYourResultsModelToJson(this);
}

enum ImageTextGroupEnum {
  mainClockImage,
  mainGirlImage,
  mainManImage,
  mainFlowersImage,
  mainStrongImage,
  faceEmotionImage,
  faceCoolImage,
  faceSymmetryImage,
  faceNoseImage,
  faceJawlineImage,
  skinQualityImage,
  skinHealthImage,
  skinStainImage,
  skinDarkCircleImage,
  skinAcneImage,
  hairThicknessImage,
  hairHealthImage,
  hairShineImage,
  hairStyleImage,
  hairVolumeImage,
  eyesShapeImage,
  eyesColorImage,
  eyesBrightnessImage,
  eyesSymmetryImage,
  eyesExpressivenessImage,
  fitnessBodyImage,
  fitnessMuscleImage,
  fitnessStaminaImage,
  fitnessFlexibilityImage,
  fitnessStrengthImage;

  const ImageTextGroupEnum();

  String getTitle(S s) {
    switch (this) {
      case mainClockImage:
        return s.mainClockImage;
      case mainGirlImage:
        return s.mainGirlImage;
      case mainManImage:
        return s.mainManImage;
      case mainFlowersImage:
        return s.mainFlowersImage;
      case mainStrongImage:
        return s.mainStrongImage;
      case faceEmotionImage:
        return s.faceEmotionImage;
      case faceCoolImage:
        return s.faceCoolImage;
      case faceSymmetryImage:
        return Platform.isIOS
            ? s.faceSymmetryImage
            : s.faceSymmetryImageAndroid;
      case faceNoseImage:
        return s.faceNoseImage;
      case faceJawlineImage:
        return Platform.isIOS ? s.faceJawlineImage : s.faceJawlineImageAndroid;
      case skinQualityImage:
        return s.skinQualityImage;
      case skinHealthImage:
        return s.skinHealthImage;
      case skinStainImage:
        return s.skinStainImage;
      case skinDarkCircleImage:
        return s.skinDarkCircleImage;
      case skinAcneImage:
        return s.skinAcneImage;
      case hairThicknessImage:
        return s.hairThicknessImage;
      case hairHealthImage:
        return s.hairHealthImage;
      case hairShineImage:
        return s.hairShineImage;
      case hairStyleImage:
        return s.hairStyleImage;
      case hairVolumeImage:
        return s.hairVolumeImage;
      case eyesShapeImage:
        return s.eyesShapeImage;
      case eyesColorImage:
        return s.eyesColorImage;
      case eyesBrightnessImage:
        return s.eyesBrightnessImage;
      case eyesSymmetryImage:
        return s.eyesSymmetryImage;
      case eyesExpressivenessImage:
        return s.eyesExpressivenessImage;
      case fitnessBodyImage:
        return s.fitnessBodyImage;
      case fitnessMuscleImage:
        return s.fitnessMuscleImage;
      case fitnessStaminaImage:
        return s.fitnessStaminaImage;
      case fitnessFlexibilityImage:
        return s.fitnessFlexibilityImage;
      case fitnessStrengthImage:
        return Platform.isIOS
            ? s.fitnessStrengthImage
            : s.fitnessStrengthImageAndroid;
      default:
        return "";
    }
  }
}

enum ColorGroupEnum {
  black,
  lightGreen,
  pinkLight,
  blueLight;

  const ColorGroupEnum();

  Color getColor(ColorGroupEnum colorGroupEnum) {
    switch (this) {
      case black:
        return BC.darkGray.withOpacity(0.9);
      case lightGreen:
        return BC.lightGreen;
      case pinkLight:
        return BC.pinkLight;
      case blueLight:
        return BC.blueLight;
      default:
        return BC.white;
    }
  }
}

enum ImageOrientation {
  verticalRight,
  horizontal,
  verticalUp,
  verticalLeft,
}

enum CameraOrientation {
  verticalLeft,
  verticalRight,
  horizontal,
  upsideDown,
}
