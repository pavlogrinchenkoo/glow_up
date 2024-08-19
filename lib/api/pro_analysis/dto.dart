import 'package:json_annotation/json_annotation.dart';
import 'package:glow_up/generated/l10n.dart';

part 'dto.g.dart';

@JsonSerializable()
class ProAnalysisModel {
  final SkinAgeModel? skin_age;
  final EyePouchModel? eye_pouch;
  final DarkCircleModel? dark_circle;
  final DarkCircleSeverityModel? dark_circle_severity;
  final ForeheadWrinkleModel? forehead_wrinkle;
  final CrowsFeetModel? crows_feet;
  final EyeFinelinesModel? eye_finelines;
  final LeftEyeFinelinesSeverityModel? left_eye_finelines_severity;
  final RightEyeFinelinesSeverityModel? right_eye_finelines_severity;
  final GlabellaWrinkleModel? glabella_wrinkle;
  final NasolabialFoldModel? nasolabial_fold;
  final SkinTypeModel? skin_type;
  final BlackheadModel? blackhead;
  final SkintoneItaModel? skintone_ita;
  final SkinHueHaModel? skin_hue_ha;
  final SensitivityModel? sensitivity;
  final AcneModel? acne;
  final MoleModel? mole;
  final dynamic blackhead_count;
  final SkintoneModel? skintone;
  final EnlargedPoreCountModel? enlarged_pore_count;
  final MelaninModel? melanin;
  final ScoreInfoModel? score_info;
  final PoresForeheadModel? pores_forehead;
  final PoresLeftCheekModel? pores_left_cheek;
  final PoresRightCheekModel? pores_right_cheek;
  final PoresJawModel? pores_jaw;
  final FaceMapsModel? face_maps;

  ProAnalysisModel({
    required this.skin_age,
    required this.eye_pouch,
    required this.dark_circle,
    required this.dark_circle_severity,
    required this.forehead_wrinkle,
    required this.crows_feet,
    required this.eye_finelines,
    required this.left_eye_finelines_severity,
    required this.right_eye_finelines_severity,
    required this.glabella_wrinkle,
    required this.nasolabial_fold,
    required this.skin_type,
    required this.blackhead,
    required this.skintone_ita,
    required this.skin_hue_ha,
    required this.sensitivity,
    required this.acne,
    required this.mole,
    required this.blackhead_count,
    required this.skintone,
    required this.enlarged_pore_count,
    required this.melanin,
    required this.score_info,
    required this.pores_forehead,
    required this.pores_left_cheek,
    required this.pores_right_cheek,
    required this.pores_jaw,
    required this.face_maps,
  });

  factory ProAnalysisModel.fromJson(Map<String, dynamic> json) =>
      _$ProAnalysisModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProAnalysisModelToJson(this);
}

@JsonSerializable()
class ProAnalysisMode1l {
  final SkinAgeModel? skin_age;

  ProAnalysisMode1l({
    required this.skin_age,
  });

  factory ProAnalysisMode1l.fromJson(Map<String, dynamic> json) =>
      _$ProAnalysisMode1lFromJson(json);

  Map<String, dynamic> toJson() => _$ProAnalysisMode1lToJson(this);
}

@JsonSerializable()
class SkinAgeModel {
  final dynamic value;

  SkinAgeModel({required this.value});

  factory SkinAgeModel.fromJson(Map<String, dynamic> json) =>
      _$SkinAgeModelFromJson(json);

  Map<String, dynamic> toJson() => _$SkinAgeModelToJson(this);
}

@JsonSerializable()
class EyePouchModel {
  final dynamic value;
  final dynamic confidence;

  EyePouchModel({required this.value, required this.confidence});

  factory EyePouchModel.fromJson(Map<String, dynamic> json) =>
      _$EyePouchModelFromJson(json);

  Map<String, dynamic> toJson() => _$EyePouchModelToJson(this);
}

@JsonSerializable()
class DarkCircleModel {
  final dynamic value;
  final dynamic confidence;

  DarkCircleModel({required this.value, required this.confidence});

  factory DarkCircleModel.fromJson(Map<String, dynamic> json) =>
      _$DarkCircleModelFromJson(json);

  Map<String, dynamic> toJson() => _$DarkCircleModelToJson(this);
}

@JsonSerializable()
class DarkCircleSeverityModel {
  final dynamic value;
  final dynamic confidence;

  DarkCircleSeverityModel({required this.value, required this.confidence});

  factory DarkCircleSeverityModel.fromJson(Map<String, dynamic> json) =>
      _$DarkCircleSeverityModelFromJson(json);

  Map<String, dynamic> toJson() => _$DarkCircleSeverityModelToJson(this);
}

@JsonSerializable()
class PoresForeheadModel {
  final dynamic value;
  final dynamic confidence;

  PoresForeheadModel({required this.value, required this.confidence});

  factory PoresForeheadModel.fromJson(Map<String, dynamic> json) =>
      _$PoresForeheadModelFromJson(json);

  Map<String, dynamic> toJson() => _$PoresForeheadModelToJson(this);
}

@JsonSerializable()
class PoresLeftCheekModel {
  final dynamic value;
  final dynamic confidence;

  PoresLeftCheekModel({required this.value, required this.confidence});

  factory PoresLeftCheekModel.fromJson(Map<String, dynamic> json) =>
      _$PoresLeftCheekModelFromJson(json);

  Map<String, dynamic> toJson() => _$PoresLeftCheekModelToJson(this);
}

@JsonSerializable()
class PoresRightCheekModel {
  final dynamic value;
  final dynamic confidence;

  PoresRightCheekModel({required this.value, required this.confidence});

  factory PoresRightCheekModel.fromJson(Map<String, dynamic> json) =>
      _$PoresRightCheekModelFromJson(json);

  Map<String, dynamic> toJson() => _$PoresRightCheekModelToJson(this);
}

@JsonSerializable()
class PoresJawModel {
  final dynamic value;
  final dynamic confidence;

  PoresJawModel({required this.value, required this.confidence});

  factory PoresJawModel.fromJson(Map<String, dynamic> json) =>
      _$PoresJawModelFromJson(json);

  Map<String, dynamic> toJson() => _$PoresJawModelToJson(this);
}

@JsonSerializable()
class ForeheadWrinkleModel {
  final dynamic value;
  final dynamic confidence;

  ForeheadWrinkleModel({required this.value, required this.confidence});

  factory ForeheadWrinkleModel.fromJson(Map<String, dynamic> json) =>
      _$ForeheadWrinkleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForeheadWrinkleModelToJson(this);
}

@JsonSerializable()
class CrowsFeetModel {
  final dynamic value;
  final dynamic confidence;

  CrowsFeetModel({required this.value, required this.confidence});

  factory CrowsFeetModel.fromJson(Map<String, dynamic> json) =>
      _$CrowsFeetModelFromJson(json);

  Map<String, dynamic> toJson() => _$CrowsFeetModelToJson(this);
}

@JsonSerializable()
class EyeFinelinesModel {
  final dynamic value;
  final dynamic confidence;

  EyeFinelinesModel({required this.value, required this.confidence});

  factory EyeFinelinesModel.fromJson(Map<String, dynamic> json) =>
      _$EyeFinelinesModelFromJson(json);

  Map<String, dynamic> toJson() => _$EyeFinelinesModelToJson(this);
}

@JsonSerializable()
class LeftEyeFinelinesSeverityModel {
  final dynamic value;

  LeftEyeFinelinesSeverityModel({
    required this.value,
  });

  factory LeftEyeFinelinesSeverityModel.fromJson(Map<String, dynamic> json) =>
      _$LeftEyeFinelinesSeverityModelFromJson(json);

  Map<String, dynamic> toJson() => _$LeftEyeFinelinesSeverityModelToJson(this);
}

@JsonSerializable()
class RightEyeFinelinesSeverityModel {
  final dynamic value;

  RightEyeFinelinesSeverityModel({
    required this.value,
  });

  factory RightEyeFinelinesSeverityModel.fromJson(Map<String, dynamic> json) =>
      _$RightEyeFinelinesSeverityModelFromJson(json);

  Map<String, dynamic> toJson() => _$RightEyeFinelinesSeverityModelToJson(this);
}

@JsonSerializable()
class GlabellaWrinkleModel {
  final dynamic value;
  final dynamic confidence;

  GlabellaWrinkleModel({required this.value, required this.confidence});

  factory GlabellaWrinkleModel.fromJson(Map<String, dynamic> json) =>
      _$GlabellaWrinkleModelFromJson(json);

  Map<String, dynamic> toJson() => _$GlabellaWrinkleModelToJson(this);
}

@JsonSerializable()
class NasolabialFoldModel {
  final dynamic value;
  final dynamic confidence;

  NasolabialFoldModel({required this.value, required this.confidence});

  factory NasolabialFoldModel.fromJson(Map<String, dynamic> json) =>
      _$NasolabialFoldModelFromJson(json);

  Map<String, dynamic> toJson() => _$NasolabialFoldModelToJson(this);
}

@JsonSerializable()
class SkinTypeModel {
  final dynamic skin_type;
  final List<SkinTypeDetailModel> details;

  SkinTypeModel({required this.skin_type, required this.details});

  factory SkinTypeModel.fromJson(Map<String, dynamic> json) =>
      _$SkinTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$SkinTypeModelToJson(this);
}

@JsonSerializable()
class SkinTypeDetailModel {
  final dynamic value;
  final dynamic confidence;

  SkinTypeDetailModel({required this.value, required this.confidence});

  factory SkinTypeDetailModel.fromJson(Map<String, dynamic> json) =>
      _$SkinTypeDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$SkinTypeDetailModelToJson(this);
}

@JsonSerializable()
class PoresDetailModel {
  final dynamic value;
  final dynamic confidence;

  PoresDetailModel({required this.value, required this.confidence});

  factory PoresDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PoresDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$PoresDetailModelToJson(this);
}

@JsonSerializable()
class BlackheadModel {
  final dynamic value;
  final dynamic confidence;

  BlackheadModel({required this.value, required this.confidence});

  factory BlackheadModel.fromJson(Map<String, dynamic> json) =>
      _$BlackheadModelFromJson(json);

  Map<String, dynamic> toJson() => _$BlackheadModelToJson(this);
}

@JsonSerializable()
class SkintoneItaModel {
  final dynamic ITA;
  final dynamic skintone;

  SkintoneItaModel({required this.ITA, required this.skintone});

  factory SkintoneItaModel.fromJson(Map<String, dynamic> json) =>
      _$SkintoneItaModelFromJson(json);

  Map<String, dynamic> toJson() => _$SkintoneItaModelToJson(this);
}

@JsonSerializable()
class SkinHueHaModel {
  final dynamic HA;
  final dynamic skin_hue;

  SkinHueHaModel({required this.HA, required this.skin_hue});

  factory SkinHueHaModel.fromJson(Map<String, dynamic> json) =>
      _$SkinHueHaModelFromJson(json);

  Map<String, dynamic> toJson() => _$SkinHueHaModelToJson(this);
}

@JsonSerializable()
class SensitivityModel {
  final dynamic sensitivity_area;
  final dynamic sensitivity_intensity;

  SensitivityModel({
    required this.sensitivity_area,
    required this.sensitivity_intensity,
  });

  factory SensitivityModel.fromJson(Map<String, dynamic> json) =>
      _$SensitivityModelFromJson(json);

  Map<String, dynamic> toJson() => _$SensitivityModelToJson(this);
}

@JsonSerializable()
class AcneModel {
  final List<AcneDetailModel> rectangle;
  final List<double> confidence;
  final List<PolygonModel> polygon;

  AcneModel({
    required this.rectangle,
    required this.confidence,
    required this.polygon,
  });

  factory AcneModel.fromJson(Map<String, dynamic> json) =>
      _$AcneModelFromJson(json);

  Map<String, dynamic> toJson() => _$AcneModelToJson(this);
}

@JsonSerializable()
class AcneDetailModel {
  final dynamic left;
  final dynamic top;
  final dynamic right;
  final dynamic bottom;

  AcneDetailModel({
    required this.left,
    required this.top,
    required this.right,
    required this.bottom,
  });

  factory AcneDetailModel.fromJson(Map<String, dynamic> json) =>
      _$AcneDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$AcneDetailModelToJson(this);
}

@JsonSerializable()
class PolygonModel {
  final dynamic x;
  final dynamic y;

  PolygonModel({required this.x, required this.y});

  factory PolygonModel.fromJson(Map<String, dynamic> json) =>
      _$PolygonModelFromJson(json);

  Map<String, dynamic> toJson() => _$PolygonModelToJson(this);
}

@JsonSerializable()
class MoleModel {
  final dynamic value;
  final dynamic confidence;

  MoleModel({required this.value, required this.confidence});

  factory MoleModel.fromJson(Map<String, dynamic> json) =>
      _$MoleModelFromJson(json);

  Map<String, dynamic> toJson() => _$MoleModelToJson(this);
}

@JsonSerializable()
class AcneMarkModel {
  final dynamic value;
  final dynamic confidence;

  AcneMarkModel({required this.value, required this.confidence});

  factory AcneMarkModel.fromJson(Map<String, dynamic> json) =>
      _$AcneMarkModelFromJson(json);

  Map<String, dynamic> toJson() => _$AcneMarkModelToJson(this);
}

@JsonSerializable()
class AcneNoduleModel {
  final dynamic value;
  final dynamic confidence;

  AcneNoduleModel({required this.value, required this.confidence});

  factory AcneNoduleModel.fromJson(Map<String, dynamic> json) =>
      _$AcneNoduleModelFromJson(json);

  Map<String, dynamic> toJson() => _$AcneNoduleModelToJson(this);
}

@JsonSerializable()
class AcnePustuleModel {
  final dynamic value;
  final dynamic confidence;

  AcnePustuleModel({required this.value, required this.confidence});

  factory AcnePustuleModel.fromJson(Map<String, dynamic> json) =>
      _$AcnePustuleModelFromJson(json);

  Map<String, dynamic> toJson() => _$AcnePustuleModelToJson(this);
}

@JsonSerializable()
class SkintoneModel {
  final dynamic value;
  final dynamic confidence;

  SkintoneModel({required this.value, required this.confidence});

  factory SkintoneModel.fromJson(Map<String, dynamic> json) =>
      _$SkintoneModelFromJson(json);

  Map<String, dynamic> toJson() => _$SkintoneModelToJson(this);
}

@JsonSerializable()
class FineLineModel {
  final dynamic value;
  final dynamic confidence;

  FineLineModel({required this.value, required this.confidence});

  factory FineLineModel.fromJson(Map<String, dynamic> json) =>
      _$FineLineModelFromJson(json);

  Map<String, dynamic> toJson() => _$FineLineModelToJson(this);
}

@JsonSerializable()
class WrinkleCountModel {
  final dynamic value;
  final dynamic confidence;

  WrinkleCountModel({required this.value, required this.confidence});

  factory WrinkleCountModel.fromJson(Map<String, dynamic> json) =>
      _$WrinkleCountModelFromJson(json);

  Map<String, dynamic> toJson() => _$WrinkleCountModelToJson(this);
}

@JsonSerializable()
class OilyIntensityModel {
  final dynamic value;
  final dynamic confidence;

  OilyIntensityModel({required this.value, required this.confidence});

  factory OilyIntensityModel.fromJson(Map<String, dynamic> json) =>
      _$OilyIntensityModelFromJson(json);

  Map<String, dynamic> toJson() => _$OilyIntensityModelToJson(this);
}

@JsonSerializable()
class EnlargedPoreCountModel {
  final dynamic forehead_count;
  final dynamic left_cheek_count;
  final dynamic right_cheek_count;
  final dynamic chin_count;

  EnlargedPoreCountModel({
    required this.forehead_count,
    required this.left_cheek_count,
    required this.right_cheek_count,
    required this.chin_count,
  });

  factory EnlargedPoreCountModel.fromJson(Map<String, dynamic> json) =>
      _$EnlargedPoreCountModelFromJson(json);

  Map<String, dynamic> toJson() => _$EnlargedPoreCountModelToJson(this);
}

@JsonSerializable()
class MelaninModel {
  final dynamic brown_area;
  final dynamic melanin_concentration;
  final dynamic brown_forehead;
  final dynamic brown_leftcheek;
  final dynamic brown_rightcheek;

  MelaninModel({
    required this.brown_area,
    required this.melanin_concentration,
    required this.brown_forehead,
    required this.brown_leftcheek,
    required this.brown_rightcheek,
  });

  factory MelaninModel.fromJson(Map<String, dynamic> json) =>
      _$MelaninModelFromJson(json);

  Map<String, dynamic> toJson() => _$MelaninModelToJson(this);
}

@JsonSerializable()
class FaceMapsModel {
  final dynamic brown_area;
  final dynamic red_area;
  final dynamic roi_outline_map;
  final dynamic rough_area;
  final dynamic texture_enhanced_blackheads;
  final dynamic texture_enhanced_bw;
  final dynamic texture_enhanced_lines;
  final dynamic texture_enhanced_oily_area;
  final dynamic texture_enhanced_pores;
  final dynamic water_area;

  FaceMapsModel({
    required this.brown_area,
    required this.red_area,
    required this.roi_outline_map,
    required this.rough_area,
    required this.texture_enhanced_blackheads,
    required this.texture_enhanced_bw,
    required this.texture_enhanced_lines,
    required this.texture_enhanced_oily_area,
    required this.texture_enhanced_pores,
    required this.water_area,
  });

  factory FaceMapsModel.fromJson(Map<String, dynamic> json) =>
      _$FaceMapsModelFromJson(json);

  Map<String, dynamic> toJson() => _$FaceMapsModelToJson(this);
}

@JsonSerializable()
class PointModel {
  final dynamic x;
  final dynamic y;

  PointModel({required this.x, required this.y});

  factory PointModel.fromJson(Map<String, dynamic> json) =>
      _$PointModelFromJson(json);

  Map<String, dynamic> toJson() => _$PointModelToJson(this);
}

@JsonSerializable()
class DarkCircleTypeModel {
  final dynamic type;
  final dynamic confidence;

  DarkCircleTypeModel({required this.type, required this.confidence});

  factory DarkCircleTypeModel.fromJson(Map<String, dynamic> json) =>
      _$DarkCircleTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$DarkCircleTypeModelToJson(this);
}

@JsonSerializable()
class DarkCircleMarkModel {
  final dynamic value;
  final dynamic confidence;

  DarkCircleMarkModel({required this.value, required this.confidence});

  factory DarkCircleMarkModel.fromJson(Map<String, dynamic> json) =>
      _$DarkCircleMarkModelFromJson(json);

  Map<String, dynamic> toJson() => _$DarkCircleMarkModelToJson(this);
}

@JsonSerializable()
class WaterModel {
  final dynamic value;
  final dynamic confidence;

  WaterModel({required this.value, required this.confidence});

  factory WaterModel.fromJson(Map<String, dynamic> json) =>
      _$WaterModelFromJson(json);

  Map<String, dynamic> toJson() => _$WaterModelToJson(this);
}

@JsonSerializable()
class RoughModel {
  final dynamic value;
  final dynamic confidence;

  RoughModel({required this.value, required this.confidence});

  factory RoughModel.fromJson(Map<String, dynamic> json) =>
      _$RoughModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoughModelToJson(this);
}

@JsonSerializable()
class WrinkleSeverityModel {
  final dynamic severity;
  final dynamic confidence;

  WrinkleSeverityModel({required this.severity, required this.confidence});

  factory WrinkleSeverityModel.fromJson(Map<String, dynamic> json) =>
      _$WrinkleSeverityModelFromJson(json);

  Map<String, dynamic> toJson() => _$WrinkleSeverityModelToJson(this);
}

@JsonSerializable()
class ScoreInfoModel {
  final dynamic dark_circle_score;
  final dynamic skin_type_score;
  final dynamic wrinkle_score;
  final dynamic oily_intensity_score;
  final dynamic pores_score;
  final dynamic blackhead_score;
  final dynamic acne_score;
  final dynamic sensitivity_score;
  final dynamic melanin_score;
  final dynamic water_score;
  final dynamic rough_score;
  final dynamic total_score;
  final PoresTypeScoreModel pores_type_score;
  final DarkCircleTypeScoreModel dark_circle_type_score;

  ScoreInfoModel({
    required this.dark_circle_score,
    required this.skin_type_score,
    required this.wrinkle_score,
    required this.oily_intensity_score,
    required this.pores_score,
    required this.blackhead_score,
    required this.acne_score,
    required this.sensitivity_score,
    required this.melanin_score,
    required this.water_score,
    required this.rough_score,
    required this.total_score,
    required this.pores_type_score,
    required this.dark_circle_type_score,
  });

  factory ScoreInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ScoreInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$ScoreInfoModelToJson(this);
}

@JsonSerializable()
class PoresTypeScoreModel {
  final dynamic poresForeheadScore;
  final dynamic poresLeftCheekScore;
  final dynamic poresRightCheekScore;
  final dynamic poresJawScore;

  PoresTypeScoreModel({
    required this.poresForeheadScore,
    required this.poresLeftCheekScore,
    required this.poresRightCheekScore,
    required this.poresJawScore,
  });

  factory PoresTypeScoreModel.fromJson(Map<String, dynamic> json) =>
      _$PoresTypeScoreModelFromJson(json);

  Map<String, dynamic> toJson() => _$PoresTypeScoreModelToJson(this);
}

@JsonSerializable()
class DarkCircleTypeScoreModel {
  final dynamic leftDarkCircleScore;
  final dynamic rightDarkCircleScore;

  DarkCircleTypeScoreModel({
    required this.leftDarkCircleScore,
    required this.rightDarkCircleScore,
  });

  factory DarkCircleTypeScoreModel.fromJson(Map<String, dynamic> json) =>
      _$DarkCircleTypeScoreModelFromJson(json);

  Map<String, dynamic> toJson() => _$DarkCircleTypeScoreModelToJson(this);
}

enum ProAnalysisSkinTypeEnum {
  zero(0),
  first(1),
  second(2),
  third(3);

  const ProAnalysisSkinTypeEnum(int value);

  String getTitleText(S s) {
    switch (this) {
      case zero:
        return s.oilySkin;
      case first:
        return s.drySkin;
      case second:
        return s.neutralSkin;
      case third:
        return s.combinationSkin;
      default:
        return "";
    }
  }
}

enum ProAnalysisSkinToneEnum {
  zero(0),
  first(1),
  second(2),
  third(3),
  fourth(4);

  const ProAnalysisSkinToneEnum(int value);

  String getTitleText(S s) {
    switch (this) {
      case zero:
        return s.veryLight;
      case first:
        return s.light;
      case second:
        return s.intermediate;
      case third:
        return s.tan;
      case fourth:
        return s.brownDark;
      default:
        return "";
    }
  }
}

enum ProAnalysisSkinHueEnum {
  zero(0),
  first(1),
  second(2),
  third(3);

  const ProAnalysisSkinHueEnum(int value);

  String getTitleText(S s) {
    switch (this) {
      case zero:
        return s.yellowish;
      case first:
        return s.neutral;
      case second:
        return s.reddish;
      case third:
        return s.other;
      default:
        return "";
    }
  }
}

enum ProAnalysisForeheadWrinklesEnum {
  zero(0),
  first(1),
  second(2),
  third(3);

  const ProAnalysisForeheadWrinklesEnum(int value);

  String getTitleText(S s) {
    switch (this) {
      case zero:
        return s.none;
      case first:
        return s.mild;
      case second:
        return s.moderate;
      case third:
        return s.severe;
      default:
        return "";
    }
  }
}

enum ProAnalysisNasolabialFoldEnum {
  zero(0),
  first(1);

  const ProAnalysisNasolabialFoldEnum(int value);

  String getTitleText(S s) {
    switch (this) {
      case zero:
        return s.noLines;
      case first:
        return s.thereAreLines;
      default:
        return "";
    }
  }
}

enum ProAnalysisCrowsFeetEnum {
  zero(0),
  first(1);

  const ProAnalysisCrowsFeetEnum(int value);

  String getTitleText(S s) {
    switch (this) {
      case zero:
        return s.noCrowsFeet;
      case first:
        return s.withCrowsFeet;
      default:
        return "";
    }
  }
}

enum ProAnalysisGlabellaWrinklesEnum {
  zero(0),
  first(1);

  const ProAnalysisGlabellaWrinklesEnum(int value);

  String getTitleText(S s) {
    switch (this) {
      case zero:
        return s.noInterbrowLines;
      case first:
        return s.withInterbrowLines;
      default:
        return "";
    }
  }
}

enum ProAnalysisEyeFinelinesEnum {
  zero(0),
  first(1);

  const ProAnalysisEyeFinelinesEnum(int value);

  String getTitleText(S s) {
    switch (this) {
      case zero:
        return s.noFineLines;
      case first:
        return s.withFineLines;
      default:
        return "";
    }
  }
}

enum ProAnalysisFineLinesLeftEnum {
  zero(0),
  first(1),
  second(2),
  third(3);

  const ProAnalysisFineLinesLeftEnum(int value);

  String getTitleText(S s) {
    switch (this) {
      case zero:
        return s.none;
      case first:
        return s.mild;
      case second:
        return s.moderate;
      case third:
        return s.severe;
      default:
        return "";
    }
  }
}

enum ProAnalysisFineLinesRightEnum {
  zero(0),
  first(1),
  second(2),
  third(3);

  const ProAnalysisFineLinesRightEnum(int value);

  String getTitleText(S s) {
    switch (this) {
      case zero:
        return s.none;
      case first:
        return s.mild;
      case second:
        return s.moderate;
      case third:
        return s.severe;
      default:
        return "";
    }
  }
}

enum ProAnalysisEyeBagsEnum {
  zero(0),
  first(1);

  const ProAnalysisEyeBagsEnum(int value);

  String getTitleText(S s) {
    switch (this) {
      case zero:
        return s.noBagsUnderEyes;
      case first:
        return s.withBagsUnderEyes;
      default:
        return "";
    }
  }
}

enum ProAnalysisDarkCirclesEnum {
  zero(0),
  first(1),
  second(2),
  third(3);

  const ProAnalysisDarkCirclesEnum(int value);

  String getTitleText(S s) {
    switch (this) {
      case zero:
        return s.noDarkCircles;
      case first:
        return s.pigmentedDarkCircles;
      case second:
        return s.vascularDarkCircles;
      case third:
        return s.darkCirclesWithShadows;
      default:
        return "";
    }
  }
}
