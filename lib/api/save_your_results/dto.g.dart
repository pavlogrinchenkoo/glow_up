// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveMainResultsModel _$SaveMainResultsModelFromJson(
        Map<String, dynamic> json) =>
    SaveMainResultsModel(
      personalEstimate: (json['personalEstimate'] as num).toDouble(),
      personalEstimateInWorldEnum: $enumDecode(
          _$SaveYourResultsEstimateInWorldEnumEnumMap,
          json['personalEstimateInWorldEnum']),
      overallEstimate: (json['overallEstimate'] as num).toInt(),
      potentialEstimate: (json['potentialEstimate'] as num).toInt(),
      age: (json['age'] as num).toInt(),
      valueScoreFemale: (json['valueScoreFemale'] as num).toInt(),
      valueScoreMale: (json['valueScoreMale'] as num).toInt(),
      femininity: (json['femininity'] as num).toInt(),
      masculinity: (json['masculinity'] as num).toInt(),
      scoreEnumFemale:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['scoreEnumFemale']),
      scoreEnumMale:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['scoreEnumMale']),
      femininityEnum:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['femininityEnum']),
      masculinityEnum:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['masculinityEnum']),
    );

Map<String, dynamic> _$SaveMainResultsModelToJson(
        SaveMainResultsModel instance) =>
    <String, dynamic>{
      'personalEstimate': instance.personalEstimate,
      'personalEstimateInWorldEnum':
          _$SaveYourResultsEstimateInWorldEnumEnumMap[
              instance.personalEstimateInWorldEnum]!,
      'overallEstimate': instance.overallEstimate,
      'potentialEstimate': instance.potentialEstimate,
      'age': instance.age,
      'valueScoreFemale': instance.valueScoreFemale,
      'valueScoreMale': instance.valueScoreMale,
      'femininity': instance.femininity,
      'masculinity': instance.masculinity,
      'scoreEnumFemale':
          _$SaveResultsSubTextEnumEnumMap[instance.scoreEnumFemale]!,
      'scoreEnumMale': _$SaveResultsSubTextEnumEnumMap[instance.scoreEnumMale]!,
      'femininityEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.femininityEnum]!,
      'masculinityEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.masculinityEnum]!,
    };

const _$SaveYourResultsEstimateInWorldEnumEnumMap = {
  SaveYourResultsEstimateInWorldEnum.top18: 'top18',
  SaveYourResultsEstimateInWorldEnum.top12: 'top12',
  SaveYourResultsEstimateInWorldEnum.top3: 'top3',
  SaveYourResultsEstimateInWorldEnum.top1: 'top1',
};

const _$SaveResultsSubTextEnumEnumMap = {
  SaveResultsSubTextEnum.random: 'random',
  SaveResultsSubTextEnum.average: 'average',
  SaveResultsSubTextEnum.belowAverage: 'belowAverage',
};

SaveFaceResultsModel _$SaveFaceResultsModelFromJson(
        Map<String, dynamic> json) =>
    SaveFaceResultsModel(
      faceEmotion:
          $enumDecode(_$SaveFaceResultsEnumEnumMap, json['faceEmotion']),
      faceGlass: $enumDecode(_$SaveFaceResultsEnumEnumMap, json['faceGlass']),
      faceAnalyzingText:
          $enumDecode(_$SaveFaceResultsEnumEnumMap, json['faceAnalyzingText']),
      faceSymmetryText:
          $enumDecode(_$SaveFaceResultsEnumEnumMap, json['faceSymmetryText']),
      faceNoseShapeText:
          $enumDecode(_$SaveFaceResultsEnumEnumMap, json['faceNoseShapeText']),
      faceJawlineDefinitionText: $enumDecode(
          _$SaveFaceResultsEnumEnumMap, json['faceJawlineDefinitionText']),
      faceAnalyzingAPI: (json['faceAnalyzingAPI'] as num).toInt(),
      faceGlassAPI: json['faceGlassAPI'] as String,
      faceEmotionAPI: json['faceEmotionAPI'] as String,
      faceSymmetryRandomAPI: (json['faceSymmetryRandomAPI'] as num).toInt(),
      faceNoseShapeRandomAPI: (json['faceNoseShapeRandomAPI'] as num).toInt(),
      faceJawlineDefinitionRandomAPI:
          (json['faceJawlineDefinitionRandomAPI'] as num).toInt(),
      faceSymmetryRandomEnum: $enumDecode(
          _$SaveResultsSubTextEnumEnumMap, json['faceSymmetryRandomEnum']),
      faceNoseShapeRandomEnum: $enumDecode(
          _$SaveResultsSubTextEnumEnumMap, json['faceNoseShapeRandomEnum']),
      faceJawlineDefinitionRandomEnum: $enumDecode(
          _$SaveResultsSubTextEnumEnumMap,
          json['faceJawlineDefinitionRandomEnum']),
    );

Map<String, dynamic> _$SaveFaceResultsModelToJson(
        SaveFaceResultsModel instance) =>
    <String, dynamic>{
      'faceEmotion': _$SaveFaceResultsEnumEnumMap[instance.faceEmotion]!,
      'faceGlass': _$SaveFaceResultsEnumEnumMap[instance.faceGlass]!,
      'faceAnalyzingText':
          _$SaveFaceResultsEnumEnumMap[instance.faceAnalyzingText]!,
      'faceSymmetryText':
          _$SaveFaceResultsEnumEnumMap[instance.faceSymmetryText]!,
      'faceNoseShapeText':
          _$SaveFaceResultsEnumEnumMap[instance.faceNoseShapeText]!,
      'faceJawlineDefinitionText':
          _$SaveFaceResultsEnumEnumMap[instance.faceJawlineDefinitionText]!,
      'faceAnalyzingAPI': instance.faceAnalyzingAPI,
      'faceGlassAPI': instance.faceGlassAPI,
      'faceEmotionAPI': instance.faceEmotionAPI,
      'faceSymmetryRandomAPI': instance.faceSymmetryRandomAPI,
      'faceNoseShapeRandomAPI': instance.faceNoseShapeRandomAPI,
      'faceJawlineDefinitionRandomAPI': instance.faceJawlineDefinitionRandomAPI,
      'faceSymmetryRandomEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.faceSymmetryRandomEnum]!,
      'faceNoseShapeRandomEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.faceNoseShapeRandomEnum]!,
      'faceJawlineDefinitionRandomEnum': _$SaveResultsSubTextEnumEnumMap[
          instance.faceJawlineDefinitionRandomEnum]!,
    };

const _$SaveFaceResultsEnumEnumMap = {
  SaveFaceResultsEnum.faceAnalyzing: 'faceAnalyzing',
  SaveFaceResultsEnum.faceEmotion: 'faceEmotion',
  SaveFaceResultsEnum.glass: 'glass',
  SaveFaceResultsEnum.symmetry: 'symmetry',
  SaveFaceResultsEnum.noseShape: 'noseShape',
  SaveFaceResultsEnum.jawlineDefinition: 'jawlineDefinition',
};

SaveSkinResultsModel _$SaveSkinResultsModelFromJson(
        Map<String, dynamic> json) =>
    SaveSkinResultsModel(
      skinAnalyzingText:
          $enumDecode(_$SaveSkinResultsEnumEnumMap, json['skinAnalyzingText']),
      skinQuality:
          $enumDecode(_$SaveSkinResultsEnumEnumMap, json['skinQuality']),
      skinHealth: $enumDecode(_$SaveSkinResultsEnumEnumMap, json['skinHealth']),
      skinStain: $enumDecode(_$SaveSkinResultsEnumEnumMap, json['skinStain']),
      skinDarkCircle:
          $enumDecode(_$SaveSkinResultsEnumEnumMap, json['skinDarkCircle']),
      skinAcne: $enumDecode(_$SaveSkinResultsEnumEnumMap, json['skinAcne']),
      skinAnalyzingAPI: (json['skinAnalyzingAPI'] as num).toInt(),
      skinQualityAPI: (json['skinQualityAPI'] as num).toInt(),
      skinHealthAPI: (json['skinHealthAPI'] as num).toInt(),
      skinStainAPI: (json['skinStainAPI'] as num).toInt(),
      skinDarkCircleAPI: (json['skinDarkCircleAPI'] as num).toInt(),
      skinAcneAPI: (json['skinAcneAPI'] as num).toInt(),
      skinQualityEnum:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['skinQualityEnum']),
      skinHealthEnum:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['skinHealthEnum']),
      skinStainEnum:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['skinStainEnum']),
      skinDarkCircleEnum: $enumDecode(
          _$SaveResultsSubTextEnumEnumMap, json['skinDarkCircleEnum']),
      skinAcneEnum:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['skinAcneEnum']),
    );

Map<String, dynamic> _$SaveSkinResultsModelToJson(
        SaveSkinResultsModel instance) =>
    <String, dynamic>{
      'skinAnalyzingText':
          _$SaveSkinResultsEnumEnumMap[instance.skinAnalyzingText]!,
      'skinQuality': _$SaveSkinResultsEnumEnumMap[instance.skinQuality]!,
      'skinHealth': _$SaveSkinResultsEnumEnumMap[instance.skinHealth]!,
      'skinStain': _$SaveSkinResultsEnumEnumMap[instance.skinStain]!,
      'skinDarkCircle': _$SaveSkinResultsEnumEnumMap[instance.skinDarkCircle]!,
      'skinAcne': _$SaveSkinResultsEnumEnumMap[instance.skinAcne]!,
      'skinAnalyzingAPI': instance.skinAnalyzingAPI,
      'skinQualityAPI': instance.skinQualityAPI,
      'skinHealthAPI': instance.skinHealthAPI,
      'skinStainAPI': instance.skinStainAPI,
      'skinDarkCircleAPI': instance.skinDarkCircleAPI,
      'skinAcneAPI': instance.skinAcneAPI,
      'skinQualityEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.skinQualityEnum]!,
      'skinHealthEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.skinHealthEnum]!,
      'skinStainEnum': _$SaveResultsSubTextEnumEnumMap[instance.skinStainEnum]!,
      'skinDarkCircleEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.skinDarkCircleEnum]!,
      'skinAcneEnum': _$SaveResultsSubTextEnumEnumMap[instance.skinAcneEnum]!,
    };

const _$SaveSkinResultsEnumEnumMap = {
  SaveSkinResultsEnum.skinAnalyzing: 'skinAnalyzing',
  SaveSkinResultsEnum.skinQuality: 'skinQuality',
  SaveSkinResultsEnum.skinHealth: 'skinHealth',
  SaveSkinResultsEnum.stain: 'stain',
  SaveSkinResultsEnum.darkCircle: 'darkCircle',
  SaveSkinResultsEnum.acne: 'acne',
};

SaveHairResultsModel _$SaveHairResultsModelFromJson(
        Map<String, dynamic> json) =>
    SaveHairResultsModel(
      hairAnalyzingText:
          $enumDecode(_$SaveHairResultsEnumEnumMap, json['hairAnalyzingText']),
      hairThickness:
          $enumDecode(_$SaveHairResultsEnumEnumMap, json['hairThickness']),
      hairHealth: $enumDecode(_$SaveHairResultsEnumEnumMap, json['hairHealth']),
      hairShine: $enumDecode(_$SaveHairResultsEnumEnumMap, json['hairShine']),
      hairStyle: $enumDecode(_$SaveHairResultsEnumEnumMap, json['hairStyle']),
      hairVolume: $enumDecode(_$SaveHairResultsEnumEnumMap, json['hairVolume']),
      hairAnalyzingAPI: (json['hairAnalyzingAPI'] as num).toInt(),
      hairThicknessAPI: (json['hairThicknessAPI'] as num).toInt(),
      hairHealthAPI: (json['hairHealthAPI'] as num).toInt(),
      hairShineAPI: (json['hairShineAPI'] as num).toInt(),
      hairStyleAPI: (json['hairStyleAPI'] as num).toInt(),
      hairVolumeAPI: (json['hairVolumeAPI'] as num).toInt(),
      hairThicknessEnum: $enumDecode(
          _$SaveResultsSubTextEnumEnumMap, json['hairThicknessEnum']),
      hairHealthEnum:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['hairHealthEnum']),
      hairShineEnum:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['hairShineEnum']),
      hairStyleEnum:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['hairStyleEnum']),
      hairVolumeEnum:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['hairVolumeEnum']),
    );

Map<String, dynamic> _$SaveHairResultsModelToJson(
        SaveHairResultsModel instance) =>
    <String, dynamic>{
      'hairAnalyzingText':
          _$SaveHairResultsEnumEnumMap[instance.hairAnalyzingText]!,
      'hairThickness': _$SaveHairResultsEnumEnumMap[instance.hairThickness]!,
      'hairHealth': _$SaveHairResultsEnumEnumMap[instance.hairHealth]!,
      'hairShine': _$SaveHairResultsEnumEnumMap[instance.hairShine]!,
      'hairStyle': _$SaveHairResultsEnumEnumMap[instance.hairStyle]!,
      'hairVolume': _$SaveHairResultsEnumEnumMap[instance.hairVolume]!,
      'hairAnalyzingAPI': instance.hairAnalyzingAPI,
      'hairThicknessAPI': instance.hairThicknessAPI,
      'hairHealthAPI': instance.hairHealthAPI,
      'hairShineAPI': instance.hairShineAPI,
      'hairStyleAPI': instance.hairStyleAPI,
      'hairVolumeAPI': instance.hairVolumeAPI,
      'hairThicknessEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.hairThicknessEnum]!,
      'hairHealthEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.hairHealthEnum]!,
      'hairShineEnum': _$SaveResultsSubTextEnumEnumMap[instance.hairShineEnum]!,
      'hairStyleEnum': _$SaveResultsSubTextEnumEnumMap[instance.hairStyleEnum]!,
      'hairVolumeEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.hairVolumeEnum]!,
    };

const _$SaveHairResultsEnumEnumMap = {
  SaveHairResultsEnum.hairAnalyzing: 'hairAnalyzing',
  SaveHairResultsEnum.hairThickness: 'hairThickness',
  SaveHairResultsEnum.hairHealth: 'hairHealth',
  SaveHairResultsEnum.hairShine: 'hairShine',
  SaveHairResultsEnum.hairStyle: 'hairStyle',
  SaveHairResultsEnum.hairVolume: 'hairVolume',
};

SaveEyesResultsModel _$SaveEyesResultsModelFromJson(
        Map<String, dynamic> json) =>
    SaveEyesResultsModel(
      eyesAnalyzingText:
          $enumDecode(_$SaveEyesResultsEnumEnumMap, json['eyesAnalyzingText']),
      eyesShape: $enumDecode(_$SaveEyesResultsEnumEnumMap, json['eyesShape']),
      eyesColor: $enumDecode(_$SaveEyesResultsEnumEnumMap, json['eyesColor']),
      eyesBrightness:
          $enumDecode(_$SaveEyesResultsEnumEnumMap, json['eyesBrightness']),
      eyesSymmetry:
          $enumDecode(_$SaveEyesResultsEnumEnumMap, json['eyesSymmetry']),
      eyesExpressiveness:
          $enumDecode(_$SaveEyesResultsEnumEnumMap, json['eyesExpressiveness']),
      eyesAnalyzingAPI: (json['eyesAnalyzingAPI'] as num).toInt(),
      eyesShapeAPI: (json['eyesShapeAPI'] as num).toInt(),
      eyesColorAPI: (json['eyesColorAPI'] as num).toInt(),
      eyesBrightnessAPI: (json['eyesBrightnessAPI'] as num).toInt(),
      eyesSymmetryAPI: (json['eyesSymmetryAPI'] as num).toInt(),
      eyesExpressivenessAPI: (json['eyesExpressivenessAPI'] as num).toInt(),
      eyesShapeEnum:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['eyesShapeEnum']),
      eyesColorEnum:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['eyesColorEnum']),
      eyesBrightnessEnum: $enumDecode(
          _$SaveResultsSubTextEnumEnumMap, json['eyesBrightnessEnum']),
      eyesSymmetryEnum: $enumDecode(
          _$SaveResultsSubTextEnumEnumMap, json['eyesSymmetryEnum']),
      eyesExpressivenessEnum: $enumDecode(
          _$SaveResultsSubTextEnumEnumMap, json['eyesExpressivenessEnum']),
    );

Map<String, dynamic> _$SaveEyesResultsModelToJson(
        SaveEyesResultsModel instance) =>
    <String, dynamic>{
      'eyesAnalyzingText':
          _$SaveEyesResultsEnumEnumMap[instance.eyesAnalyzingText]!,
      'eyesShape': _$SaveEyesResultsEnumEnumMap[instance.eyesShape]!,
      'eyesColor': _$SaveEyesResultsEnumEnumMap[instance.eyesColor]!,
      'eyesBrightness': _$SaveEyesResultsEnumEnumMap[instance.eyesBrightness]!,
      'eyesSymmetry': _$SaveEyesResultsEnumEnumMap[instance.eyesSymmetry]!,
      'eyesExpressiveness':
          _$SaveEyesResultsEnumEnumMap[instance.eyesExpressiveness]!,
      'eyesAnalyzingAPI': instance.eyesAnalyzingAPI,
      'eyesShapeAPI': instance.eyesShapeAPI,
      'eyesColorAPI': instance.eyesColorAPI,
      'eyesBrightnessAPI': instance.eyesBrightnessAPI,
      'eyesSymmetryAPI': instance.eyesSymmetryAPI,
      'eyesExpressivenessAPI': instance.eyesExpressivenessAPI,
      'eyesShapeEnum': _$SaveResultsSubTextEnumEnumMap[instance.eyesShapeEnum]!,
      'eyesColorEnum': _$SaveResultsSubTextEnumEnumMap[instance.eyesColorEnum]!,
      'eyesBrightnessEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.eyesBrightnessEnum]!,
      'eyesSymmetryEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.eyesSymmetryEnum]!,
      'eyesExpressivenessEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.eyesExpressivenessEnum]!,
    };

const _$SaveEyesResultsEnumEnumMap = {
  SaveEyesResultsEnum.eyesAnalyzing: 'eyesAnalyzing',
  SaveEyesResultsEnum.eyesShape: 'eyesShape',
  SaveEyesResultsEnum.eyesColor: 'eyesColor',
  SaveEyesResultsEnum.eyesBrightness: 'eyesBrightness',
  SaveEyesResultsEnum.eyesSymmetry: 'eyesSymmetry',
  SaveEyesResultsEnum.eyesExpressiveness: 'eyesExpressiveness',
};

SaveFitnessResultsModel _$SaveFitnessResultsModelFromJson(
        Map<String, dynamic> json) =>
    SaveFitnessResultsModel(
      fitnessAnalyzing: $enumDecode(
          _$SaveFitnessResultsEnumEnumMap, json['fitnessAnalyzing']),
      fitnessBody:
          $enumDecode(_$SaveFitnessResultsEnumEnumMap, json['fitnessBody']),
      fitnessMuscle:
          $enumDecode(_$SaveFitnessResultsEnumEnumMap, json['fitnessMuscle']),
      fitnessStamina:
          $enumDecode(_$SaveFitnessResultsEnumEnumMap, json['fitnessStamina']),
      fitnessFlexibility: $enumDecode(
          _$SaveFitnessResultsEnumEnumMap, json['fitnessFlexibility']),
      fitnessStrength:
          $enumDecode(_$SaveFitnessResultsEnumEnumMap, json['fitnessStrength']),
      fitnessAnalyzingAPI: (json['fitnessAnalyzingAPI'] as num).toInt(),
      fitnessBodyAPI: (json['fitnessBodyAPI'] as num).toInt(),
      fitnessMuscleAPI: (json['fitnessMuscleAPI'] as num).toInt(),
      fitnessStaminaAPI: (json['fitnessStaminaAPI'] as num).toInt(),
      fitnessFlexibilityAPI: (json['fitnessFlexibilityAPI'] as num).toInt(),
      fitnessStrengthAPI: (json['fitnessStrengthAPI'] as num).toInt(),
      fitnessBodyEnum:
          $enumDecode(_$SaveResultsSubTextEnumEnumMap, json['fitnessBodyEnum']),
      fitnessMuscleEnum: $enumDecode(
          _$SaveResultsSubTextEnumEnumMap, json['fitnessMuscleEnum']),
      fitnessStaminaEnum: $enumDecode(
          _$SaveResultsSubTextEnumEnumMap, json['fitnessStaminaEnum']),
      fitnessFlexibilityEnum: $enumDecode(
          _$SaveResultsSubTextEnumEnumMap, json['fitnessFlexibilityEnum']),
      fitnessStrengthEnum: $enumDecode(
          _$SaveResultsSubTextEnumEnumMap, json['fitnessStrengthEnum']),
    );

Map<String, dynamic> _$SaveFitnessResultsModelToJson(
        SaveFitnessResultsModel instance) =>
    <String, dynamic>{
      'fitnessAnalyzing':
          _$SaveFitnessResultsEnumEnumMap[instance.fitnessAnalyzing]!,
      'fitnessBody': _$SaveFitnessResultsEnumEnumMap[instance.fitnessBody]!,
      'fitnessMuscle': _$SaveFitnessResultsEnumEnumMap[instance.fitnessMuscle]!,
      'fitnessStamina':
          _$SaveFitnessResultsEnumEnumMap[instance.fitnessStamina]!,
      'fitnessFlexibility':
          _$SaveFitnessResultsEnumEnumMap[instance.fitnessFlexibility]!,
      'fitnessStrength':
          _$SaveFitnessResultsEnumEnumMap[instance.fitnessStrength]!,
      'fitnessAnalyzingAPI': instance.fitnessAnalyzingAPI,
      'fitnessBodyAPI': instance.fitnessBodyAPI,
      'fitnessMuscleAPI': instance.fitnessMuscleAPI,
      'fitnessStaminaAPI': instance.fitnessStaminaAPI,
      'fitnessFlexibilityAPI': instance.fitnessFlexibilityAPI,
      'fitnessStrengthAPI': instance.fitnessStrengthAPI,
      'fitnessBodyEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.fitnessBodyEnum]!,
      'fitnessMuscleEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.fitnessMuscleEnum]!,
      'fitnessStaminaEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.fitnessStaminaEnum]!,
      'fitnessFlexibilityEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.fitnessFlexibilityEnum]!,
      'fitnessStrengthEnum':
          _$SaveResultsSubTextEnumEnumMap[instance.fitnessStrengthEnum]!,
    };

const _$SaveFitnessResultsEnumEnumMap = {
  SaveFitnessResultsEnum.fitnessAnalyzing: 'fitnessAnalyzing',
  SaveFitnessResultsEnum.fitnessBody: 'fitnessBody',
  SaveFitnessResultsEnum.fitnessMuscle: 'fitnessMuscle',
  SaveFitnessResultsEnum.fitnessStamina: 'fitnessStamina',
  SaveFitnessResultsEnum.fitnessFlexibility: 'fitnessFlexibility',
  SaveFitnessResultsEnum.fitnessStrength: 'fitnessStrength',
};

CardSaveYourResultsModel _$CardSaveYourResultsModelFromJson(
        Map<String, dynamic> json) =>
    CardSaveYourResultsModel(
      saveMainResultsModel: SaveMainResultsModel.fromJson(
          json['saveMainResultsModel'] as Map<String, dynamic>),
      saveFaceResultsModel: SaveFaceResultsModel.fromJson(
          json['saveFaceResultsModel'] as Map<String, dynamic>),
      saveSkinResultsModel: SaveSkinResultsModel.fromJson(
          json['saveSkinResultsModel'] as Map<String, dynamic>),
      saveHairResultsModel: SaveHairResultsModel.fromJson(
          json['saveHairResultsModel'] as Map<String, dynamic>),
      saveEyesResultsModel: SaveEyesResultsModel.fromJson(
          json['saveEyesResultsModel'] as Map<String, dynamic>),
      saveFitnessResultsModel: SaveFitnessResultsModel.fromJson(
          json['saveFitnessResultsModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardSaveYourResultsModelToJson(
        CardSaveYourResultsModel instance) =>
    <String, dynamic>{
      'saveMainResultsModel': instance.saveMainResultsModel,
      'saveFaceResultsModel': instance.saveFaceResultsModel,
      'saveSkinResultsModel': instance.saveSkinResultsModel,
      'saveHairResultsModel': instance.saveHairResultsModel,
      'saveEyesResultsModel': instance.saveEyesResultsModel,
      'saveFitnessResultsModel': instance.saveFitnessResultsModel,
    };
