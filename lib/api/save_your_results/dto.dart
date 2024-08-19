import 'dart:math';

import 'package:glow_up/api/show_your_results/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dto.g.dart';

@JsonSerializable()
class SaveMainResultsModel {
  double personalEstimate;
  SaveYourResultsEstimateInWorldEnum personalEstimateInWorldEnum;
  int overallEstimate;
  int potentialEstimate;
  int age;
  int valueScoreFemale;
  int valueScoreMale;
  int femininity;
  int masculinity;
  SaveResultsSubTextEnum scoreEnumFemale;
  SaveResultsSubTextEnum scoreEnumMale;
  SaveResultsSubTextEnum femininityEnum;
  SaveResultsSubTextEnum masculinityEnum;

  SaveMainResultsModel({
    required this.personalEstimate,
    required this.personalEstimateInWorldEnum,
    required this.overallEstimate,
    required this.potentialEstimate,
    required this.age,
    required this.valueScoreFemale,
    required this.valueScoreMale,
    required this.femininity,
    required this.masculinity,
    required this.scoreEnumFemale,
    required this.scoreEnumMale,
    required this.femininityEnum,
    required this.masculinityEnum,
  });

  factory SaveMainResultsModel.fromJson(Map<String, dynamic> json) =>
      _$SaveMainResultsModelFromJson(json);

  Map<String, dynamic> toJson() => _$SaveMainResultsModelToJson(this);
}

@JsonSerializable()
class SaveFaceResultsModel {
  SaveFaceResultsEnum faceEmotion;
  SaveFaceResultsEnum faceGlass;
  SaveFaceResultsEnum faceAnalyzingText;
  SaveFaceResultsEnum faceSymmetryText;
  SaveFaceResultsEnum faceNoseShapeText;
  SaveFaceResultsEnum faceJawlineDefinitionText;
  int faceAnalyzingAPI;
  String faceGlassAPI;
  String faceEmotionAPI;
  int faceSymmetryRandomAPI;
  int faceNoseShapeRandomAPI;
  int faceJawlineDefinitionRandomAPI;
  SaveResultsSubTextEnum faceSymmetryRandomEnum;
  SaveResultsSubTextEnum faceNoseShapeRandomEnum;
  SaveResultsSubTextEnum faceJawlineDefinitionRandomEnum;

  SaveFaceResultsModel({
    required this.faceEmotion,
    required this.faceGlass,
    required this.faceAnalyzingText,
    required this.faceSymmetryText,
    required this.faceNoseShapeText,
    required this.faceJawlineDefinitionText,
    required this.faceAnalyzingAPI,
    required this.faceGlassAPI,
    required this.faceEmotionAPI,
    required this.faceSymmetryRandomAPI,
    required this.faceNoseShapeRandomAPI,
    required this.faceJawlineDefinitionRandomAPI,
    required this.faceSymmetryRandomEnum,
    required this.faceNoseShapeRandomEnum,
    required this.faceJawlineDefinitionRandomEnum,
  });

  factory SaveFaceResultsModel.fromJson(Map<String, dynamic> json) =>
      _$SaveFaceResultsModelFromJson(json);

  Map<String, dynamic> toJson() => _$SaveFaceResultsModelToJson(this);
}

@JsonSerializable()
class SaveSkinResultsModel {
  SaveSkinResultsEnum skinAnalyzingText;
  SaveSkinResultsEnum skinQuality;
  SaveSkinResultsEnum skinHealth;
  SaveSkinResultsEnum skinStain;
  SaveSkinResultsEnum skinDarkCircle;
  SaveSkinResultsEnum skinAcne;
  int skinAnalyzingAPI;
  int skinQualityAPI;
  int skinHealthAPI;
  int skinStainAPI;
  int skinDarkCircleAPI;
  int skinAcneAPI;
  SaveResultsSubTextEnum skinQualityEnum;
  SaveResultsSubTextEnum skinHealthEnum;
  SaveResultsSubTextEnum skinStainEnum;
  SaveResultsSubTextEnum skinDarkCircleEnum;
  SaveResultsSubTextEnum skinAcneEnum;

  SaveSkinResultsModel({
    required this.skinAnalyzingText,
    required this.skinQuality,
    required this.skinHealth,
    required this.skinStain,
    required this.skinDarkCircle,
    required this.skinAcne,
    required this.skinAnalyzingAPI,
    required this.skinQualityAPI,
    required this.skinHealthAPI,
    required this.skinStainAPI,
    required this.skinDarkCircleAPI,
    required this.skinAcneAPI,
    required this.skinQualityEnum,
    required this.skinHealthEnum,
    required this.skinStainEnum,
    required this.skinDarkCircleEnum,
    required this.skinAcneEnum,
  });

  factory SaveSkinResultsModel.fromJson(Map<String, dynamic> json) =>
      _$SaveSkinResultsModelFromJson(json);

  Map<String, dynamic> toJson() => _$SaveSkinResultsModelToJson(this);
}

@JsonSerializable()
class SaveHairResultsModel {
  SaveHairResultsEnum hairAnalyzingText;
  SaveHairResultsEnum hairThickness;
  SaveHairResultsEnum hairHealth;
  SaveHairResultsEnum hairShine;
  SaveHairResultsEnum hairStyle;
  SaveHairResultsEnum hairVolume;
  int hairAnalyzingAPI;
  int hairThicknessAPI;
  int hairHealthAPI;
  int hairShineAPI;
  int hairStyleAPI;
  int hairVolumeAPI;
  SaveResultsSubTextEnum hairThicknessEnum;
  SaveResultsSubTextEnum hairHealthEnum;
  SaveResultsSubTextEnum hairShineEnum;
  SaveResultsSubTextEnum hairStyleEnum;
  SaveResultsSubTextEnum hairVolumeEnum;

  SaveHairResultsModel({
    required this.hairAnalyzingText,
    required this.hairThickness,
    required this.hairHealth,
    required this.hairShine,
    required this.hairStyle,
    required this.hairVolume,
    required this.hairAnalyzingAPI,
    required this.hairThicknessAPI,
    required this.hairHealthAPI,
    required this.hairShineAPI,
    required this.hairStyleAPI,
    required this.hairVolumeAPI,
    required this.hairThicknessEnum,
    required this.hairHealthEnum,
    required this.hairShineEnum,
    required this.hairStyleEnum,
    required this.hairVolumeEnum,
  });

  factory SaveHairResultsModel.fromJson(Map<String, dynamic> json) =>
      _$SaveHairResultsModelFromJson(json);

  Map<String, dynamic> toJson() => _$SaveHairResultsModelToJson(this);
}

@JsonSerializable()
class SaveEyesResultsModel {
  SaveEyesResultsEnum eyesAnalyzingText;
  SaveEyesResultsEnum eyesShape;
  SaveEyesResultsEnum eyesColor;
  SaveEyesResultsEnum eyesBrightness;
  SaveEyesResultsEnum eyesSymmetry;
  SaveEyesResultsEnum eyesExpressiveness;
  int eyesAnalyzingAPI;
  int eyesShapeAPI;
  int eyesColorAPI;
  int eyesBrightnessAPI;
  int eyesSymmetryAPI;
  int eyesExpressivenessAPI;
  SaveResultsSubTextEnum eyesShapeEnum;
  SaveResultsSubTextEnum eyesColorEnum;
  SaveResultsSubTextEnum eyesBrightnessEnum;
  SaveResultsSubTextEnum eyesSymmetryEnum;
  SaveResultsSubTextEnum eyesExpressivenessEnum;

  SaveEyesResultsModel({
    required this.eyesAnalyzingText,
    required this.eyesShape,
    required this.eyesColor,
    required this.eyesBrightness,
    required this.eyesSymmetry,
    required this.eyesExpressiveness,
    required this.eyesAnalyzingAPI,
    required this.eyesShapeAPI,
    required this.eyesColorAPI,
    required this.eyesBrightnessAPI,
    required this.eyesSymmetryAPI,
    required this.eyesExpressivenessAPI,
    required this.eyesShapeEnum,
    required this.eyesColorEnum,
    required this.eyesBrightnessEnum,
    required this.eyesSymmetryEnum,
    required this.eyesExpressivenessEnum,
  });

  factory SaveEyesResultsModel.fromJson(Map<String, dynamic> json) =>
      _$SaveEyesResultsModelFromJson(json);

  Map<String, dynamic> toJson() => _$SaveEyesResultsModelToJson(this);
}

@JsonSerializable()
class SaveFitnessResultsModel {
  SaveFitnessResultsEnum fitnessAnalyzing;
  SaveFitnessResultsEnum fitnessBody;
  SaveFitnessResultsEnum fitnessMuscle;
  SaveFitnessResultsEnum fitnessStamina;
  SaveFitnessResultsEnum fitnessFlexibility;
  SaveFitnessResultsEnum fitnessStrength;
  int fitnessAnalyzingAPI;
  int fitnessBodyAPI;
  int fitnessMuscleAPI;
  int fitnessStaminaAPI;
  int fitnessFlexibilityAPI;
  int fitnessStrengthAPI;
  SaveResultsSubTextEnum fitnessBodyEnum;
  SaveResultsSubTextEnum fitnessMuscleEnum;
  SaveResultsSubTextEnum fitnessStaminaEnum;
  SaveResultsSubTextEnum fitnessFlexibilityEnum;
  SaveResultsSubTextEnum fitnessStrengthEnum;

  SaveFitnessResultsModel({
    required this.fitnessAnalyzing,
    required this.fitnessBody,
    required this.fitnessMuscle,
    required this.fitnessStamina,
    required this.fitnessFlexibility,
    required this.fitnessStrength,
    required this.fitnessAnalyzingAPI,
    required this.fitnessBodyAPI,
    required this.fitnessMuscleAPI,
    required this.fitnessStaminaAPI,
    required this.fitnessFlexibilityAPI,
    required this.fitnessStrengthAPI,
    required this.fitnessBodyEnum,
    required this.fitnessMuscleEnum,
    required this.fitnessStaminaEnum,
    required this.fitnessFlexibilityEnum,
    required this.fitnessStrengthEnum,
  });

  factory SaveFitnessResultsModel.fromJson(Map<String, dynamic> json) =>
      _$SaveFitnessResultsModelFromJson(json);

  Map<String, dynamic> toJson() => _$SaveFitnessResultsModelToJson(this);
}

@JsonSerializable()
class CardSaveYourResultsModel {
  SaveMainResultsModel saveMainResultsModel;
  SaveFaceResultsModel saveFaceResultsModel;
  SaveSkinResultsModel saveSkinResultsModel;
  SaveHairResultsModel saveHairResultsModel;
  SaveEyesResultsModel saveEyesResultsModel;
  SaveFitnessResultsModel saveFitnessResultsModel;

  CardSaveYourResultsModel({
    required this.saveMainResultsModel,
    required this.saveFaceResultsModel,
    required this.saveSkinResultsModel,
    required this.saveHairResultsModel,
    required this.saveEyesResultsModel,
    required this.saveFitnessResultsModel,
  });

  factory CardSaveYourResultsModel.fromJson(Map<String, dynamic> json) =>
      _$CardSaveYourResultsModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardSaveYourResultsModelToJson(this);
}

enum SaveYourResultsEstimateInWorldEnum {
  top18,
  top12,
  top3,
  top1;

  const SaveYourResultsEstimateInWorldEnum();

  String getTitle(S s) {
    switch (this) {
      case top18:
        return s.top18;
      case top12:
        return s.top12;
      case top3:
        return s.top3;
      case top1:
        return s.top1;
      default:
        return s.top18;
    }
  }
}

enum SaveResultsSubTextEnum {
  random,
  average,
  belowAverage;

  const SaveResultsSubTextEnum();

  String getTitle(S s) {
    switch (this) {
      case random:
        return "Top ${Random().nextInt(12) + 1}% in the world";
      case average:
        return s.average;
      case belowAverage:
        return s.belowAverage;
      default:
        return "";
    }
  }

  ColorGroupEnum getColor(SaveResultsSubTextEnum scoreEnum) {
    switch (this) {
      case random:
        return ColorGroupEnum.lightGreen;
      case average:
        return ColorGroupEnum.blueLight;
      case belowAverage:
        return ColorGroupEnum.pinkLight;
      default:
        return ColorGroupEnum.lightGreen;
    }
  }
}

enum SaveFaceResultsEnum {
  faceAnalyzing,
  faceEmotion,
  glass,
  symmetry,
  noseShape,
  jawlineDefinition;

  const SaveFaceResultsEnum();

  String getTitle(S s) {
    switch (this) {
      case faceAnalyzing:
        return s.faceAnalyzing;
      case faceEmotion:
        return s.faceEmotion;
      case glass:
        return s.glass;
      case symmetry:
        return s.symmetry;
      case noseShape:
        return s.noseShape;
      case jawlineDefinition:
        return s.jawlineDefinition;
      default:
        return s.faceEmotion;
    }
  }
}

enum SaveSkinResultsEnum {
  skinAnalyzing,
  skinQuality,
  skinHealth,
  stain,
  darkCircle,
  acne;

  const SaveSkinResultsEnum();

  String getTitle(S s) {
    switch (this) {
      case skinAnalyzing:
        return s.skinAnalyzing;
      case skinQuality:
        return s.skinQuality;
      case skinHealth:
        return s.skinHealth;
      case stain:
        return s.stain;
      case darkCircle:
        return s.darkCircle;
      case acne:
        return s.acne;
      default:
        return s.skinAnalyzing;
    }
  }
}

enum SaveHairResultsEnum {
  hairAnalyzing,
  hairThickness,
  hairHealth,
  hairShine,
  hairStyle,
  hairVolume;

  const SaveHairResultsEnum();

  String getTitle(S s) {
    switch (this) {
      case hairAnalyzing:
        return s.hairAnalyzing;
      case hairThickness:
        return s.hairThickness;
      case hairHealth:
        return s.hairHealth;
      case hairShine:
        return s.hairShine;
      case hairStyle:
        return s.hairStyle;
      case hairVolume:
        return s.hairVolume;
      default:
        return s.hairAnalyzing;
    }
  }
}

enum SaveEyesResultsEnum {
  eyesAnalyzing,
  eyesShape,
  eyesColor,
  eyesBrightness,
  eyesSymmetry,
  eyesExpressiveness;

  const SaveEyesResultsEnum();

  String getTitle(S s) {
    switch (this) {
      case eyesAnalyzing:
        return s.eyesAnalyzing;
      case eyesShape:
        return s.eyesShape;
      case eyesColor:
        return s.eyesColor;
      case eyesBrightness:
        return s.eyesBrightness;
      case eyesSymmetry:
        return s.eyesSymmetry;
      case eyesExpressiveness:
        return s.eyesExpressiveness;
      default:
        return s.eyesAnalyzing;
    }
  }
}

enum SaveFitnessResultsEnum {
  fitnessAnalyzing,
  fitnessBody,
  fitnessMuscle,
  fitnessStamina,
  fitnessFlexibility,
  fitnessStrength;

  const SaveFitnessResultsEnum();

  String getTitle(S s) {
    switch (this) {
      case fitnessAnalyzing:
        return s.fitnessAnalyzing;
      case fitnessBody:
        return s.fitnessBody;
      case fitnessMuscle:
        return s.fitnessMuscle;
      case fitnessStamina:
        return s.fitnessStamina;
      case fitnessFlexibility:
        return s.fitnessFlexibility;
      case fitnessStrength:
        return s.fitnessStrength;
      default:
        return s.eyesAnalyzing;
    }
  }
}
