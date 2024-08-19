// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProAnalysisModel _$ProAnalysisModelFromJson(Map<String, dynamic> json) =>
    ProAnalysisModel(
      skin_age: json['skin_age'] == null
          ? null
          : SkinAgeModel.fromJson(json['skin_age'] as Map<String, dynamic>),
      eye_pouch: json['eye_pouch'] == null
          ? null
          : EyePouchModel.fromJson(json['eye_pouch'] as Map<String, dynamic>),
      dark_circle: json['dark_circle'] == null
          ? null
          : DarkCircleModel.fromJson(
              json['dark_circle'] as Map<String, dynamic>),
      dark_circle_severity: json['dark_circle_severity'] == null
          ? null
          : DarkCircleSeverityModel.fromJson(
              json['dark_circle_severity'] as Map<String, dynamic>),
      forehead_wrinkle: json['forehead_wrinkle'] == null
          ? null
          : ForeheadWrinkleModel.fromJson(
              json['forehead_wrinkle'] as Map<String, dynamic>),
      crows_feet: json['crows_feet'] == null
          ? null
          : CrowsFeetModel.fromJson(json['crows_feet'] as Map<String, dynamic>),
      eye_finelines: json['eye_finelines'] == null
          ? null
          : EyeFinelinesModel.fromJson(
              json['eye_finelines'] as Map<String, dynamic>),
      left_eye_finelines_severity: json['left_eye_finelines_severity'] == null
          ? null
          : LeftEyeFinelinesSeverityModel.fromJson(
              json['left_eye_finelines_severity'] as Map<String, dynamic>),
      right_eye_finelines_severity: json['right_eye_finelines_severity'] == null
          ? null
          : RightEyeFinelinesSeverityModel.fromJson(
              json['right_eye_finelines_severity'] as Map<String, dynamic>),
      glabella_wrinkle: json['glabella_wrinkle'] == null
          ? null
          : GlabellaWrinkleModel.fromJson(
              json['glabella_wrinkle'] as Map<String, dynamic>),
      nasolabial_fold: json['nasolabial_fold'] == null
          ? null
          : NasolabialFoldModel.fromJson(
              json['nasolabial_fold'] as Map<String, dynamic>),
      skin_type: json['skin_type'] == null
          ? null
          : SkinTypeModel.fromJson(json['skin_type'] as Map<String, dynamic>),
      blackhead: json['blackhead'] == null
          ? null
          : BlackheadModel.fromJson(json['blackhead'] as Map<String, dynamic>),
      skintone_ita: json['skintone_ita'] == null
          ? null
          : SkintoneItaModel.fromJson(
              json['skintone_ita'] as Map<String, dynamic>),
      skin_hue_ha: json['skin_hue_ha'] == null
          ? null
          : SkinHueHaModel.fromJson(
              json['skin_hue_ha'] as Map<String, dynamic>),
      sensitivity: json['sensitivity'] == null
          ? null
          : SensitivityModel.fromJson(
              json['sensitivity'] as Map<String, dynamic>),
      acne: json['acne'] == null
          ? null
          : AcneModel.fromJson(json['acne'] as Map<String, dynamic>),
      mole: json['mole'] == null
          ? null
          : MoleModel.fromJson(json['mole'] as Map<String, dynamic>),
      blackhead_count: json['blackhead_count'],
      skintone: json['skintone'] == null
          ? null
          : SkintoneModel.fromJson(json['skintone'] as Map<String, dynamic>),
      enlarged_pore_count: json['enlarged_pore_count'] == null
          ? null
          : EnlargedPoreCountModel.fromJson(
              json['enlarged_pore_count'] as Map<String, dynamic>),
      melanin: json['melanin'] == null
          ? null
          : MelaninModel.fromJson(json['melanin'] as Map<String, dynamic>),
      score_info: json['score_info'] == null
          ? null
          : ScoreInfoModel.fromJson(json['score_info'] as Map<String, dynamic>),
      pores_forehead: json['pores_forehead'] == null
          ? null
          : PoresForeheadModel.fromJson(
              json['pores_forehead'] as Map<String, dynamic>),
      pores_left_cheek: json['pores_left_cheek'] == null
          ? null
          : PoresLeftCheekModel.fromJson(
              json['pores_left_cheek'] as Map<String, dynamic>),
      pores_right_cheek: json['pores_right_cheek'] == null
          ? null
          : PoresRightCheekModel.fromJson(
              json['pores_right_cheek'] as Map<String, dynamic>),
      pores_jaw: json['pores_jaw'] == null
          ? null
          : PoresJawModel.fromJson(json['pores_jaw'] as Map<String, dynamic>),
      face_maps: json['face_maps'] == null
          ? null
          : FaceMapsModel.fromJson(json['face_maps'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProAnalysisModelToJson(ProAnalysisModel instance) =>
    <String, dynamic>{
      'skin_age': instance.skin_age,
      'eye_pouch': instance.eye_pouch,
      'dark_circle': instance.dark_circle,
      'dark_circle_severity': instance.dark_circle_severity,
      'forehead_wrinkle': instance.forehead_wrinkle,
      'crows_feet': instance.crows_feet,
      'eye_finelines': instance.eye_finelines,
      'left_eye_finelines_severity': instance.left_eye_finelines_severity,
      'right_eye_finelines_severity': instance.right_eye_finelines_severity,
      'glabella_wrinkle': instance.glabella_wrinkle,
      'nasolabial_fold': instance.nasolabial_fold,
      'skin_type': instance.skin_type,
      'blackhead': instance.blackhead,
      'skintone_ita': instance.skintone_ita,
      'skin_hue_ha': instance.skin_hue_ha,
      'sensitivity': instance.sensitivity,
      'acne': instance.acne,
      'mole': instance.mole,
      'blackhead_count': instance.blackhead_count,
      'skintone': instance.skintone,
      'enlarged_pore_count': instance.enlarged_pore_count,
      'melanin': instance.melanin,
      'score_info': instance.score_info,
      'pores_forehead': instance.pores_forehead,
      'pores_left_cheek': instance.pores_left_cheek,
      'pores_right_cheek': instance.pores_right_cheek,
      'pores_jaw': instance.pores_jaw,
      'face_maps': instance.face_maps,
    };

ProAnalysisMode1l _$ProAnalysisMode1lFromJson(Map<String, dynamic> json) =>
    ProAnalysisMode1l(
      skin_age: json['skin_age'] == null
          ? null
          : SkinAgeModel.fromJson(json['skin_age'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProAnalysisMode1lToJson(ProAnalysisMode1l instance) =>
    <String, dynamic>{
      'skin_age': instance.skin_age,
    };

SkinAgeModel _$SkinAgeModelFromJson(Map<String, dynamic> json) => SkinAgeModel(
      value: json['value'],
    );

Map<String, dynamic> _$SkinAgeModelToJson(SkinAgeModel instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

EyePouchModel _$EyePouchModelFromJson(Map<String, dynamic> json) =>
    EyePouchModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$EyePouchModelToJson(EyePouchModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

DarkCircleModel _$DarkCircleModelFromJson(Map<String, dynamic> json) =>
    DarkCircleModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$DarkCircleModelToJson(DarkCircleModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

DarkCircleSeverityModel _$DarkCircleSeverityModelFromJson(
        Map<String, dynamic> json) =>
    DarkCircleSeverityModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$DarkCircleSeverityModelToJson(
        DarkCircleSeverityModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

PoresForeheadModel _$PoresForeheadModelFromJson(Map<String, dynamic> json) =>
    PoresForeheadModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$PoresForeheadModelToJson(PoresForeheadModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

PoresLeftCheekModel _$PoresLeftCheekModelFromJson(Map<String, dynamic> json) =>
    PoresLeftCheekModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$PoresLeftCheekModelToJson(
        PoresLeftCheekModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

PoresRightCheekModel _$PoresRightCheekModelFromJson(
        Map<String, dynamic> json) =>
    PoresRightCheekModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$PoresRightCheekModelToJson(
        PoresRightCheekModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

PoresJawModel _$PoresJawModelFromJson(Map<String, dynamic> json) =>
    PoresJawModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$PoresJawModelToJson(PoresJawModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

ForeheadWrinkleModel _$ForeheadWrinkleModelFromJson(
        Map<String, dynamic> json) =>
    ForeheadWrinkleModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$ForeheadWrinkleModelToJson(
        ForeheadWrinkleModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

CrowsFeetModel _$CrowsFeetModelFromJson(Map<String, dynamic> json) =>
    CrowsFeetModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$CrowsFeetModelToJson(CrowsFeetModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

EyeFinelinesModel _$EyeFinelinesModelFromJson(Map<String, dynamic> json) =>
    EyeFinelinesModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$EyeFinelinesModelToJson(EyeFinelinesModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

LeftEyeFinelinesSeverityModel _$LeftEyeFinelinesSeverityModelFromJson(
        Map<String, dynamic> json) =>
    LeftEyeFinelinesSeverityModel(
      value: json['value'],
    );

Map<String, dynamic> _$LeftEyeFinelinesSeverityModelToJson(
        LeftEyeFinelinesSeverityModel instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

RightEyeFinelinesSeverityModel _$RightEyeFinelinesSeverityModelFromJson(
        Map<String, dynamic> json) =>
    RightEyeFinelinesSeverityModel(
      value: json['value'],
    );

Map<String, dynamic> _$RightEyeFinelinesSeverityModelToJson(
        RightEyeFinelinesSeverityModel instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

GlabellaWrinkleModel _$GlabellaWrinkleModelFromJson(
        Map<String, dynamic> json) =>
    GlabellaWrinkleModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$GlabellaWrinkleModelToJson(
        GlabellaWrinkleModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

NasolabialFoldModel _$NasolabialFoldModelFromJson(Map<String, dynamic> json) =>
    NasolabialFoldModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$NasolabialFoldModelToJson(
        NasolabialFoldModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

SkinTypeModel _$SkinTypeModelFromJson(Map<String, dynamic> json) =>
    SkinTypeModel(
      skin_type: json['skin_type'],
      details: (json['details'] as List<dynamic>)
          .map((e) => SkinTypeDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SkinTypeModelToJson(SkinTypeModel instance) =>
    <String, dynamic>{
      'skin_type': instance.skin_type,
      'details': instance.details,
    };

SkinTypeDetailModel _$SkinTypeDetailModelFromJson(Map<String, dynamic> json) =>
    SkinTypeDetailModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$SkinTypeDetailModelToJson(
        SkinTypeDetailModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

PoresDetailModel _$PoresDetailModelFromJson(Map<String, dynamic> json) =>
    PoresDetailModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$PoresDetailModelToJson(PoresDetailModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

BlackheadModel _$BlackheadModelFromJson(Map<String, dynamic> json) =>
    BlackheadModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$BlackheadModelToJson(BlackheadModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

SkintoneItaModel _$SkintoneItaModelFromJson(Map<String, dynamic> json) =>
    SkintoneItaModel(
      ITA: json['ITA'],
      skintone: json['skintone'],
    );

Map<String, dynamic> _$SkintoneItaModelToJson(SkintoneItaModel instance) =>
    <String, dynamic>{
      'ITA': instance.ITA,
      'skintone': instance.skintone,
    };

SkinHueHaModel _$SkinHueHaModelFromJson(Map<String, dynamic> json) =>
    SkinHueHaModel(
      HA: json['HA'],
      skin_hue: json['skin_hue'],
    );

Map<String, dynamic> _$SkinHueHaModelToJson(SkinHueHaModel instance) =>
    <String, dynamic>{
      'HA': instance.HA,
      'skin_hue': instance.skin_hue,
    };

SensitivityModel _$SensitivityModelFromJson(Map<String, dynamic> json) =>
    SensitivityModel(
      sensitivity_area: json['sensitivity_area'],
      sensitivity_intensity: json['sensitivity_intensity'],
    );

Map<String, dynamic> _$SensitivityModelToJson(SensitivityModel instance) =>
    <String, dynamic>{
      'sensitivity_area': instance.sensitivity_area,
      'sensitivity_intensity': instance.sensitivity_intensity,
    };

AcneModel _$AcneModelFromJson(Map<String, dynamic> json) => AcneModel(
      rectangle: (json['rectangle'] as List<dynamic>)
          .map((e) => AcneDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      confidence: (json['confidence'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      polygon: (json['polygon'] as List<dynamic>)
          .map((e) => PolygonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AcneModelToJson(AcneModel instance) => <String, dynamic>{
      'rectangle': instance.rectangle,
      'confidence': instance.confidence,
      'polygon': instance.polygon,
    };

AcneDetailModel _$AcneDetailModelFromJson(Map<String, dynamic> json) =>
    AcneDetailModel(
      left: json['left'],
      top: json['top'],
      right: json['right'],
      bottom: json['bottom'],
    );

Map<String, dynamic> _$AcneDetailModelToJson(AcneDetailModel instance) =>
    <String, dynamic>{
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
    };

PolygonModel _$PolygonModelFromJson(Map<String, dynamic> json) => PolygonModel(
      x: json['x'],
      y: json['y'],
    );

Map<String, dynamic> _$PolygonModelToJson(PolygonModel instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

MoleModel _$MoleModelFromJson(Map<String, dynamic> json) => MoleModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$MoleModelToJson(MoleModel instance) => <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

AcneMarkModel _$AcneMarkModelFromJson(Map<String, dynamic> json) =>
    AcneMarkModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$AcneMarkModelToJson(AcneMarkModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

AcneNoduleModel _$AcneNoduleModelFromJson(Map<String, dynamic> json) =>
    AcneNoduleModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$AcneNoduleModelToJson(AcneNoduleModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

AcnePustuleModel _$AcnePustuleModelFromJson(Map<String, dynamic> json) =>
    AcnePustuleModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$AcnePustuleModelToJson(AcnePustuleModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

SkintoneModel _$SkintoneModelFromJson(Map<String, dynamic> json) =>
    SkintoneModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$SkintoneModelToJson(SkintoneModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

FineLineModel _$FineLineModelFromJson(Map<String, dynamic> json) =>
    FineLineModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$FineLineModelToJson(FineLineModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

WrinkleCountModel _$WrinkleCountModelFromJson(Map<String, dynamic> json) =>
    WrinkleCountModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$WrinkleCountModelToJson(WrinkleCountModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

OilyIntensityModel _$OilyIntensityModelFromJson(Map<String, dynamic> json) =>
    OilyIntensityModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$OilyIntensityModelToJson(OilyIntensityModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

EnlargedPoreCountModel _$EnlargedPoreCountModelFromJson(
        Map<String, dynamic> json) =>
    EnlargedPoreCountModel(
      forehead_count: json['forehead_count'],
      left_cheek_count: json['left_cheek_count'],
      right_cheek_count: json['right_cheek_count'],
      chin_count: json['chin_count'],
    );

Map<String, dynamic> _$EnlargedPoreCountModelToJson(
        EnlargedPoreCountModel instance) =>
    <String, dynamic>{
      'forehead_count': instance.forehead_count,
      'left_cheek_count': instance.left_cheek_count,
      'right_cheek_count': instance.right_cheek_count,
      'chin_count': instance.chin_count,
    };

MelaninModel _$MelaninModelFromJson(Map<String, dynamic> json) => MelaninModel(
      brown_area: json['brown_area'],
      melanin_concentration: json['melanin_concentration'],
      brown_forehead: json['brown_forehead'],
      brown_leftcheek: json['brown_leftcheek'],
      brown_rightcheek: json['brown_rightcheek'],
    );

Map<String, dynamic> _$MelaninModelToJson(MelaninModel instance) =>
    <String, dynamic>{
      'brown_area': instance.brown_area,
      'melanin_concentration': instance.melanin_concentration,
      'brown_forehead': instance.brown_forehead,
      'brown_leftcheek': instance.brown_leftcheek,
      'brown_rightcheek': instance.brown_rightcheek,
    };

FaceMapsModel _$FaceMapsModelFromJson(Map<String, dynamic> json) =>
    FaceMapsModel(
      brown_area: json['brown_area'],
      red_area: json['red_area'],
      roi_outline_map: json['roi_outline_map'],
      rough_area: json['rough_area'],
      texture_enhanced_blackheads: json['texture_enhanced_blackheads'],
      texture_enhanced_bw: json['texture_enhanced_bw'],
      texture_enhanced_lines: json['texture_enhanced_lines'],
      texture_enhanced_oily_area: json['texture_enhanced_oily_area'],
      texture_enhanced_pores: json['texture_enhanced_pores'],
      water_area: json['water_area'],
    );

Map<String, dynamic> _$FaceMapsModelToJson(FaceMapsModel instance) =>
    <String, dynamic>{
      'brown_area': instance.brown_area,
      'red_area': instance.red_area,
      'roi_outline_map': instance.roi_outline_map,
      'rough_area': instance.rough_area,
      'texture_enhanced_blackheads': instance.texture_enhanced_blackheads,
      'texture_enhanced_bw': instance.texture_enhanced_bw,
      'texture_enhanced_lines': instance.texture_enhanced_lines,
      'texture_enhanced_oily_area': instance.texture_enhanced_oily_area,
      'texture_enhanced_pores': instance.texture_enhanced_pores,
      'water_area': instance.water_area,
    };

PointModel _$PointModelFromJson(Map<String, dynamic> json) => PointModel(
      x: json['x'],
      y: json['y'],
    );

Map<String, dynamic> _$PointModelToJson(PointModel instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

DarkCircleTypeModel _$DarkCircleTypeModelFromJson(Map<String, dynamic> json) =>
    DarkCircleTypeModel(
      type: json['type'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$DarkCircleTypeModelToJson(
        DarkCircleTypeModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'confidence': instance.confidence,
    };

DarkCircleMarkModel _$DarkCircleMarkModelFromJson(Map<String, dynamic> json) =>
    DarkCircleMarkModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$DarkCircleMarkModelToJson(
        DarkCircleMarkModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

WaterModel _$WaterModelFromJson(Map<String, dynamic> json) => WaterModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$WaterModelToJson(WaterModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

RoughModel _$RoughModelFromJson(Map<String, dynamic> json) => RoughModel(
      value: json['value'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$RoughModelToJson(RoughModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'confidence': instance.confidence,
    };

WrinkleSeverityModel _$WrinkleSeverityModelFromJson(
        Map<String, dynamic> json) =>
    WrinkleSeverityModel(
      severity: json['severity'],
      confidence: json['confidence'],
    );

Map<String, dynamic> _$WrinkleSeverityModelToJson(
        WrinkleSeverityModel instance) =>
    <String, dynamic>{
      'severity': instance.severity,
      'confidence': instance.confidence,
    };

ScoreInfoModel _$ScoreInfoModelFromJson(Map<String, dynamic> json) =>
    ScoreInfoModel(
      dark_circle_score: json['dark_circle_score'],
      skin_type_score: json['skin_type_score'],
      wrinkle_score: json['wrinkle_score'],
      oily_intensity_score: json['oily_intensity_score'],
      pores_score: json['pores_score'],
      blackhead_score: json['blackhead_score'],
      acne_score: json['acne_score'],
      sensitivity_score: json['sensitivity_score'],
      melanin_score: json['melanin_score'],
      water_score: json['water_score'],
      rough_score: json['rough_score'],
      total_score: json['total_score'],
      pores_type_score: PoresTypeScoreModel.fromJson(
          json['pores_type_score'] as Map<String, dynamic>),
      dark_circle_type_score: DarkCircleTypeScoreModel.fromJson(
          json['dark_circle_type_score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScoreInfoModelToJson(ScoreInfoModel instance) =>
    <String, dynamic>{
      'dark_circle_score': instance.dark_circle_score,
      'skin_type_score': instance.skin_type_score,
      'wrinkle_score': instance.wrinkle_score,
      'oily_intensity_score': instance.oily_intensity_score,
      'pores_score': instance.pores_score,
      'blackhead_score': instance.blackhead_score,
      'acne_score': instance.acne_score,
      'sensitivity_score': instance.sensitivity_score,
      'melanin_score': instance.melanin_score,
      'water_score': instance.water_score,
      'rough_score': instance.rough_score,
      'total_score': instance.total_score,
      'pores_type_score': instance.pores_type_score,
      'dark_circle_type_score': instance.dark_circle_type_score,
    };

PoresTypeScoreModel _$PoresTypeScoreModelFromJson(Map<String, dynamic> json) =>
    PoresTypeScoreModel(
      poresForeheadScore: json['poresForeheadScore'],
      poresLeftCheekScore: json['poresLeftCheekScore'],
      poresRightCheekScore: json['poresRightCheekScore'],
      poresJawScore: json['poresJawScore'],
    );

Map<String, dynamic> _$PoresTypeScoreModelToJson(
        PoresTypeScoreModel instance) =>
    <String, dynamic>{
      'poresForeheadScore': instance.poresForeheadScore,
      'poresLeftCheekScore': instance.poresLeftCheekScore,
      'poresRightCheekScore': instance.poresRightCheekScore,
      'poresJawScore': instance.poresJawScore,
    };

DarkCircleTypeScoreModel _$DarkCircleTypeScoreModelFromJson(
        Map<String, dynamic> json) =>
    DarkCircleTypeScoreModel(
      leftDarkCircleScore: json['leftDarkCircleScore'],
      rightDarkCircleScore: json['rightDarkCircleScore'],
    );

Map<String, dynamic> _$DarkCircleTypeScoreModelToJson(
        DarkCircleTypeScoreModel instance) =>
    <String, dynamic>{
      'leftDarkCircleScore': instance.leftDarkCircleScore,
      'rightDarkCircleScore': instance.rightDarkCircleScore,
    };
