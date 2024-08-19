// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultAnalysisModel _$DefaultAnalysisModelFromJson(
        Map<String, dynamic> json) =>
    DefaultAnalysisModel(
      landmark: json['landmark'] == null
          ? null
          : LandmarkModel.fromJson(json['landmark'] as Map<String, dynamic>),
      face_rectangle: json['face_rectangle'] == null
          ? null
          : FaceRectangleModel.fromJson(
              json['face_rectangle'] as Map<String, dynamic>),
      attributes: json['attributes'] == null
          ? null
          : AttributeModel.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DefaultAnalysisModelToJson(
        DefaultAnalysisModel instance) =>
    <String, dynamic>{
      'face_rectangle': instance.face_rectangle,
      'landmark': instance.landmark,
      'attributes': instance.attributes,
    };

AttributeModel _$AttributeModelFromJson(Map<String, dynamic> json) =>
    AttributeModel(
      gender: GenderModel.fromJson(json['gender'] as Map<String, dynamic>),
      age: AgeModel.fromJson(json['age'] as Map<String, dynamic>),
      emotion: EmotionModel.fromJson(json['emotion'] as Map<String, dynamic>),
      facequality: FaceQualityModel.fromJson(
          json['facequality'] as Map<String, dynamic>),
      beauty: BeautyModel.fromJson(json['beauty'] as Map<String, dynamic>),
      skinstatus:
          SkinStatusModel.fromJson(json['skinstatus'] as Map<String, dynamic>),
      glass: GlassModel.fromJson(json['glass'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttributeModelToJson(AttributeModel instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'age': instance.age,
      'emotion': instance.emotion,
      'facequality': instance.facequality,
      'beauty': instance.beauty,
      'skinstatus': instance.skinstatus,
      'glass': instance.glass,
    };

GenderModel _$GenderModelFromJson(Map<String, dynamic> json) => GenderModel(
      value: json['value'] as String,
    );

Map<String, dynamic> _$GenderModelToJson(GenderModel instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

AgeModel _$AgeModelFromJson(Map<String, dynamic> json) => AgeModel(
      value: json['value'] as int,
    );

Map<String, dynamic> _$AgeModelToJson(AgeModel instance) => <String, dynamic>{
      'value': instance.value,
    };

EmotionModel _$EmotionModelFromJson(Map<String, dynamic> json) => EmotionModel(
      anger: (json['anger'] as num).toDouble(),
      disgust: (json['disgust'] as num).toDouble(),
      fear: (json['fear'] as num).toDouble(),
      happiness: (json['happiness'] as num).toDouble(),
      neutral: (json['neutral'] as num).toDouble(),
      sadness: (json['sadness'] as num).toDouble(),
      surprise: (json['surprise'] as num).toDouble(),
    );

Map<String, dynamic> _$EmotionModelToJson(EmotionModel instance) =>
    <String, dynamic>{
      'anger': instance.anger,
      'disgust': instance.disgust,
      'fear': instance.fear,
      'happiness': instance.happiness,
      'neutral': instance.neutral,
      'sadness': instance.sadness,
      'surprise': instance.surprise,
    };

FaceQualityModel _$FaceQualityModelFromJson(Map<String, dynamic> json) =>
    FaceQualityModel(
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$FaceQualityModelToJson(FaceQualityModel instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

BeautyModel _$BeautyModelFromJson(Map<String, dynamic> json) => BeautyModel(
      female_score: (json['female_score'] as num).toDouble(),
      male_score: (json['male_score'] as num).toDouble(),
    );

Map<String, dynamic> _$BeautyModelToJson(BeautyModel instance) =>
    <String, dynamic>{
      'female_score': instance.female_score,
      'male_score': instance.male_score,
    };

SkinStatusModel _$SkinStatusModelFromJson(Map<String, dynamic> json) =>
    SkinStatusModel(
      health: (json['health'] as num).toDouble(),
      stain: (json['stain'] as num).toDouble(),
      dark_circle: (json['dark_circle'] as num).toDouble(),
      acne: (json['acne'] as num).toDouble(),
    );

Map<String, dynamic> _$SkinStatusModelToJson(SkinStatusModel instance) =>
    <String, dynamic>{
      'health': instance.health,
      'stain': instance.stain,
      'dark_circle': instance.dark_circle,
      'acne': instance.acne,
    };

GlassModel _$GlassModelFromJson(Map<String, dynamic> json) => GlassModel(
      value: json['value'] as String,
    );

Map<String, dynamic> _$GlassModelToJson(GlassModel instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

LandmarkModel _$LandmarkModelFromJson(Map<String, dynamic> json) =>
    LandmarkModel(
      contour_chin: json['contour_chin'] == null
          ? null
          : PointModel.fromJson(json['contour_chin'] as Map<String, dynamic>),
      contour_left1: json['contour_left1'] == null
          ? null
          : PointModel.fromJson(json['contour_left1'] as Map<String, dynamic>),
      contour_left2: json['contour_left2'] == null
          ? null
          : PointModel.fromJson(json['contour_left2'] as Map<String, dynamic>),
      contour_left3: json['contour_left3'] == null
          ? null
          : PointModel.fromJson(json['contour_left3'] as Map<String, dynamic>),
      contour_left4: json['contour_left4'] == null
          ? null
          : PointModel.fromJson(json['contour_left4'] as Map<String, dynamic>),
      contour_left5: json['contour_left5'] == null
          ? null
          : PointModel.fromJson(json['contour_left5'] as Map<String, dynamic>),
      contour_left6: json['contour_left6'] == null
          ? null
          : PointModel.fromJson(json['contour_left6'] as Map<String, dynamic>),
      contour_left7: json['contour_left7'] == null
          ? null
          : PointModel.fromJson(json['contour_left7'] as Map<String, dynamic>),
      contour_left8: json['contour_left8'] == null
          ? null
          : PointModel.fromJson(json['contour_left8'] as Map<String, dynamic>),
      contour_left9: json['contour_left9'] == null
          ? null
          : PointModel.fromJson(json['contour_left9'] as Map<String, dynamic>),
      contour_right1: json['contour_right1'] == null
          ? null
          : PointModel.fromJson(json['contour_right1'] as Map<String, dynamic>),
      contour_right2: json['contour_right2'] == null
          ? null
          : PointModel.fromJson(json['contour_right2'] as Map<String, dynamic>),
      contour_right3: json['contour_right3'] == null
          ? null
          : PointModel.fromJson(json['contour_right3'] as Map<String, dynamic>),
      contour_right4: json['contour_right4'] == null
          ? null
          : PointModel.fromJson(json['contour_right4'] as Map<String, dynamic>),
      contour_right5: json['contour_right5'] == null
          ? null
          : PointModel.fromJson(json['contour_right5'] as Map<String, dynamic>),
      contour_right6: json['contour_right6'] == null
          ? null
          : PointModel.fromJson(json['contour_right6'] as Map<String, dynamic>),
      contour_right7: json['contour_right7'] == null
          ? null
          : PointModel.fromJson(json['contour_right7'] as Map<String, dynamic>),
      contour_right8: json['contour_right8'] == null
          ? null
          : PointModel.fromJson(json['contour_right8'] as Map<String, dynamic>),
      contour_right9: json['contour_right9'] == null
          ? null
          : PointModel.fromJson(json['contour_right9'] as Map<String, dynamic>),
      left_eye_bottom: json['left_eye_bottom'] == null
          ? null
          : PointModel.fromJson(
              json['left_eye_bottom'] as Map<String, dynamic>),
      left_eye_center: json['left_eye_center'] == null
          ? null
          : PointModel.fromJson(
              json['left_eye_center'] as Map<String, dynamic>),
      left_eye_left_corner: json['left_eye_left_corner'] == null
          ? null
          : PointModel.fromJson(
              json['left_eye_left_corner'] as Map<String, dynamic>),
      left_eye_lower_left_quarter: json['left_eye_lower_left_quarter'] == null
          ? null
          : PointModel.fromJson(
              json['left_eye_lower_left_quarter'] as Map<String, dynamic>),
      left_eye_lower_right_quarter: json['left_eye_lower_right_quarter'] == null
          ? null
          : PointModel.fromJson(
              json['left_eye_lower_right_quarter'] as Map<String, dynamic>),
      left_eye_pupil: json['left_eye_pupil'] == null
          ? null
          : PointModel.fromJson(json['left_eye_pupil'] as Map<String, dynamic>),
      left_eye_right_corner: json['left_eye_right_corner'] == null
          ? null
          : PointModel.fromJson(
              json['left_eye_right_corner'] as Map<String, dynamic>),
      left_eye_top: json['left_eye_top'] == null
          ? null
          : PointModel.fromJson(json['left_eye_top'] as Map<String, dynamic>),
      left_eye_upper_left_quarter: json['left_eye_upper_left_quarter'] == null
          ? null
          : PointModel.fromJson(
              json['left_eye_upper_left_quarter'] as Map<String, dynamic>),
      left_eye_upper_right_quarter: json['left_eye_upper_right_quarter'] == null
          ? null
          : PointModel.fromJson(
              json['left_eye_upper_right_quarter'] as Map<String, dynamic>),
      left_eyebrow_left_corner: json['left_eyebrow_left_corner'] == null
          ? null
          : PointModel.fromJson(
              json['left_eyebrow_left_corner'] as Map<String, dynamic>),
      left_eyebrow_lower_left_quarter:
          json['left_eyebrow_lower_left_quarter'] == null
              ? null
              : PointModel.fromJson(json['left_eyebrow_lower_left_quarter']
                  as Map<String, dynamic>),
      left_eyebrow_lower_middle: json['left_eyebrow_lower_middle'] == null
          ? null
          : PointModel.fromJson(
              json['left_eyebrow_lower_middle'] as Map<String, dynamic>),
      left_eyebrow_lower_right_quarter:
          json['left_eyebrow_lower_right_quarter'] == null
              ? null
              : PointModel.fromJson(json['left_eyebrow_lower_right_quarter']
                  as Map<String, dynamic>),
      left_eyebrow_right_corner: json['left_eyebrow_right_corner'] == null
          ? null
          : PointModel.fromJson(
              json['left_eyebrow_right_corner'] as Map<String, dynamic>),
      left_eyebrow_upper_left_quarter:
          json['left_eyebrow_upper_left_quarter'] == null
              ? null
              : PointModel.fromJson(json['left_eyebrow_upper_left_quarter']
                  as Map<String, dynamic>),
      left_eyebrow_upper_middle: json['left_eyebrow_upper_middle'] == null
          ? null
          : PointModel.fromJson(
              json['left_eyebrow_upper_middle'] as Map<String, dynamic>),
      left_eyebrow_upper_right_quarter:
          json['left_eyebrow_upper_right_quarter'] == null
              ? null
              : PointModel.fromJson(json['left_eyebrow_upper_right_quarter']
                  as Map<String, dynamic>),
      mouth_left_corner: json['mouth_left_corner'] == null
          ? null
          : PointModel.fromJson(
              json['mouth_left_corner'] as Map<String, dynamic>),
      mouth_lower_lip_bottom: json['mouth_lower_lip_bottom'] == null
          ? null
          : PointModel.fromJson(
              json['mouth_lower_lip_bottom'] as Map<String, dynamic>),
      mouth_lower_lip_left_contour1: json['mouth_lower_lip_left_contour1'] ==
              null
          ? null
          : PointModel.fromJson(
              json['mouth_lower_lip_left_contour1'] as Map<String, dynamic>),
      mouth_lower_lip_left_contour2: json['mouth_lower_lip_left_contour2'] ==
              null
          ? null
          : PointModel.fromJson(
              json['mouth_lower_lip_left_contour2'] as Map<String, dynamic>),
      mouth_lower_lip_left_contour3: json['mouth_lower_lip_left_contour3'] ==
              null
          ? null
          : PointModel.fromJson(
              json['mouth_lower_lip_left_contour3'] as Map<String, dynamic>),
      mouth_lower_lip_right_contour1: json['mouth_lower_lip_right_contour1'] ==
              null
          ? null
          : PointModel.fromJson(
              json['mouth_lower_lip_right_contour1'] as Map<String, dynamic>),
      mouth_lower_lip_right_contour2: json['mouth_lower_lip_right_contour2'] ==
              null
          ? null
          : PointModel.fromJson(
              json['mouth_lower_lip_right_contour2'] as Map<String, dynamic>),
      mouth_lower_lip_right_contour3: json['mouth_lower_lip_right_contour3'] ==
              null
          ? null
          : PointModel.fromJson(
              json['mouth_lower_lip_right_contour3'] as Map<String, dynamic>),
      mouth_lower_lip_top: json['mouth_lower_lip_top'] == null
          ? null
          : PointModel.fromJson(
              json['mouth_lower_lip_top'] as Map<String, dynamic>),
      mouth_right_corner: json['mouth_right_corner'] == null
          ? null
          : PointModel.fromJson(
              json['mouth_right_corner'] as Map<String, dynamic>),
      mouth_upper_lip_bottom: json['mouth_upper_lip_bottom'] == null
          ? null
          : PointModel.fromJson(
              json['mouth_upper_lip_bottom'] as Map<String, dynamic>),
      mouth_upper_lip_left_contour1: json['mouth_upper_lip_left_contour1'] ==
              null
          ? null
          : PointModel.fromJson(
              json['mouth_upper_lip_left_contour1'] as Map<String, dynamic>),
      mouth_upper_lip_left_contour2: json['mouth_upper_lip_left_contour2'] ==
              null
          ? null
          : PointModel.fromJson(
              json['mouth_upper_lip_left_contour2'] as Map<String, dynamic>),
      mouth_upper_lip_left_contour3: json['mouth_upper_lip_left_contour3'] ==
              null
          ? null
          : PointModel.fromJson(
              json['mouth_upper_lip_left_contour3'] as Map<String, dynamic>),
      mouth_upper_lip_right_contour1: json['mouth_upper_lip_right_contour1'] ==
              null
          ? null
          : PointModel.fromJson(
              json['mouth_upper_lip_right_contour1'] as Map<String, dynamic>),
      mouth_upper_lip_right_contour2: json['mouth_upper_lip_right_contour2'] ==
              null
          ? null
          : PointModel.fromJson(
              json['mouth_upper_lip_right_contour2'] as Map<String, dynamic>),
      mouth_upper_lip_right_contour3: json['mouth_upper_lip_right_contour3'] ==
              null
          ? null
          : PointModel.fromJson(
              json['mouth_upper_lip_right_contour3'] as Map<String, dynamic>),
      mouth_upper_lip_top: json['mouth_upper_lip_top'] == null
          ? null
          : PointModel.fromJson(
              json['mouth_upper_lip_top'] as Map<String, dynamic>),
      nose_contour_left1: json['nose_contour_left1'] == null
          ? null
          : PointModel.fromJson(
              json['nose_contour_left1'] as Map<String, dynamic>),
      nose_contour_left2: json['nose_contour_left2'] == null
          ? null
          : PointModel.fromJson(
              json['nose_contour_left2'] as Map<String, dynamic>),
      nose_contour_left3: json['nose_contour_left3'] == null
          ? null
          : PointModel.fromJson(
              json['nose_contour_left3'] as Map<String, dynamic>),
      nose_contour_lower_middle: json['nose_contour_lower_middle'] == null
          ? null
          : PointModel.fromJson(
              json['nose_contour_lower_middle'] as Map<String, dynamic>),
      nose_contour_right1: json['nose_contour_right1'] == null
          ? null
          : PointModel.fromJson(
              json['nose_contour_right1'] as Map<String, dynamic>),
      nose_contour_right2: json['nose_contour_right2'] == null
          ? null
          : PointModel.fromJson(
              json['nose_contour_right2'] as Map<String, dynamic>),
      nose_contour_right3: json['nose_contour_right3'] == null
          ? null
          : PointModel.fromJson(
              json['nose_contour_right3'] as Map<String, dynamic>),
      nose_left: json['nose_left'] == null
          ? null
          : PointModel.fromJson(json['nose_left'] as Map<String, dynamic>),
      nose_right: json['nose_right'] == null
          ? null
          : PointModel.fromJson(json['nose_right'] as Map<String, dynamic>),
      nose_tip: json['nose_tip'] == null
          ? null
          : PointModel.fromJson(json['nose_tip'] as Map<String, dynamic>),
      right_eye_bottom: json['right_eye_bottom'] == null
          ? null
          : PointModel.fromJson(
              json['right_eye_bottom'] as Map<String, dynamic>),
      right_eye_center: json['right_eye_center'] == null
          ? null
          : PointModel.fromJson(
              json['right_eye_center'] as Map<String, dynamic>),
      right_eye_left_corner: json['right_eye_left_corner'] == null
          ? null
          : PointModel.fromJson(
              json['right_eye_left_corner'] as Map<String, dynamic>),
      right_eye_lower_left_quarter: json['right_eye_lower_left_quarter'] == null
          ? null
          : PointModel.fromJson(
              json['right_eye_lower_left_quarter'] as Map<String, dynamic>),
      right_eye_lower_right_quarter: json['right_eye_lower_right_quarter'] ==
              null
          ? null
          : PointModel.fromJson(
              json['right_eye_lower_right_quarter'] as Map<String, dynamic>),
      right_eye_pupil: json['right_eye_pupil'] == null
          ? null
          : PointModel.fromJson(
              json['right_eye_pupil'] as Map<String, dynamic>),
      right_eye_right_corner: json['right_eye_right_corner'] == null
          ? null
          : PointModel.fromJson(
              json['right_eye_right_corner'] as Map<String, dynamic>),
      right_eye_top: json['right_eye_top'] == null
          ? null
          : PointModel.fromJson(json['right_eye_top'] as Map<String, dynamic>),
      right_eye_upper_left_quarter: json['right_eye_upper_left_quarter'] == null
          ? null
          : PointModel.fromJson(
              json['right_eye_upper_left_quarter'] as Map<String, dynamic>),
      right_eye_upper_right_quarter: json['right_eye_upper_right_quarter'] ==
              null
          ? null
          : PointModel.fromJson(
              json['right_eye_upper_right_quarter'] as Map<String, dynamic>),
      right_eyebrow_left_corner: json['right_eyebrow_left_corner'] == null
          ? null
          : PointModel.fromJson(
              json['right_eyebrow_left_corner'] as Map<String, dynamic>),
      right_eyebrow_lower_left_quarter:
          json['right_eyebrow_lower_left_quarter'] == null
              ? null
              : PointModel.fromJson(json['right_eyebrow_lower_left_quarter']
                  as Map<String, dynamic>),
      right_eyebrow_lower_middle: json['right_eyebrow_lower_middle'] == null
          ? null
          : PointModel.fromJson(
              json['right_eyebrow_lower_middle'] as Map<String, dynamic>),
      right_eyebrow_lower_right_quarter:
          json['right_eyebrow_lower_right_quarter'] == null
              ? null
              : PointModel.fromJson(json['right_eyebrow_lower_right_quarter']
                  as Map<String, dynamic>),
      right_eyebrow_right_corner: json['right_eyebrow_right_corner'] == null
          ? null
          : PointModel.fromJson(
              json['right_eyebrow_right_corner'] as Map<String, dynamic>),
      right_eyebrow_upper_left_quarter:
          json['right_eyebrow_upper_left_quarter'] == null
              ? null
              : PointModel.fromJson(json['right_eyebrow_upper_left_quarter']
                  as Map<String, dynamic>),
      right_eyebrow_upper_middle: json['right_eyebrow_upper_middle'] == null
          ? null
          : PointModel.fromJson(
              json['right_eyebrow_upper_middle'] as Map<String, dynamic>),
      right_eyebrow_upper_right_quarter:
          json['right_eyebrow_upper_right_quarter'] == null
              ? null
              : PointModel.fromJson(json['right_eyebrow_upper_right_quarter']
                  as Map<String, dynamic>),
    );

Map<String, dynamic> _$LandmarkModelToJson(LandmarkModel instance) =>
    <String, dynamic>{
      'contour_chin': instance.contour_chin,
      'contour_left1': instance.contour_left1,
      'contour_left2': instance.contour_left2,
      'contour_left3': instance.contour_left3,
      'contour_left4': instance.contour_left4,
      'contour_left5': instance.contour_left5,
      'contour_left6': instance.contour_left6,
      'contour_left7': instance.contour_left7,
      'contour_left8': instance.contour_left8,
      'contour_left9': instance.contour_left9,
      'contour_right1': instance.contour_right1,
      'contour_right2': instance.contour_right2,
      'contour_right3': instance.contour_right3,
      'contour_right4': instance.contour_right4,
      'contour_right5': instance.contour_right5,
      'contour_right6': instance.contour_right6,
      'contour_right7': instance.contour_right7,
      'contour_right8': instance.contour_right8,
      'contour_right9': instance.contour_right9,
      'left_eye_bottom': instance.left_eye_bottom,
      'left_eye_center': instance.left_eye_center,
      'left_eye_left_corner': instance.left_eye_left_corner,
      'left_eye_lower_left_quarter': instance.left_eye_lower_left_quarter,
      'left_eye_lower_right_quarter': instance.left_eye_lower_right_quarter,
      'left_eye_pupil': instance.left_eye_pupil,
      'left_eye_right_corner': instance.left_eye_right_corner,
      'left_eye_top': instance.left_eye_top,
      'left_eye_upper_left_quarter': instance.left_eye_upper_left_quarter,
      'left_eye_upper_right_quarter': instance.left_eye_upper_right_quarter,
      'left_eyebrow_left_corner': instance.left_eyebrow_left_corner,
      'left_eyebrow_lower_left_quarter':
          instance.left_eyebrow_lower_left_quarter,
      'left_eyebrow_lower_middle': instance.left_eyebrow_lower_middle,
      'left_eyebrow_lower_right_quarter':
          instance.left_eyebrow_lower_right_quarter,
      'left_eyebrow_right_corner': instance.left_eyebrow_right_corner,
      'left_eyebrow_upper_left_quarter':
          instance.left_eyebrow_upper_left_quarter,
      'left_eyebrow_upper_middle': instance.left_eyebrow_upper_middle,
      'left_eyebrow_upper_right_quarter':
          instance.left_eyebrow_upper_right_quarter,
      'mouth_left_corner': instance.mouth_left_corner,
      'mouth_lower_lip_bottom': instance.mouth_lower_lip_bottom,
      'mouth_lower_lip_left_contour1': instance.mouth_lower_lip_left_contour1,
      'mouth_lower_lip_left_contour2': instance.mouth_lower_lip_left_contour2,
      'mouth_lower_lip_left_contour3': instance.mouth_lower_lip_left_contour3,
      'mouth_lower_lip_right_contour1': instance.mouth_lower_lip_right_contour1,
      'mouth_lower_lip_right_contour2': instance.mouth_lower_lip_right_contour2,
      'mouth_lower_lip_right_contour3': instance.mouth_lower_lip_right_contour3,
      'mouth_lower_lip_top': instance.mouth_lower_lip_top,
      'mouth_right_corner': instance.mouth_right_corner,
      'mouth_upper_lip_bottom': instance.mouth_upper_lip_bottom,
      'mouth_upper_lip_left_contour1': instance.mouth_upper_lip_left_contour1,
      'mouth_upper_lip_left_contour2': instance.mouth_upper_lip_left_contour2,
      'mouth_upper_lip_left_contour3': instance.mouth_upper_lip_left_contour3,
      'mouth_upper_lip_right_contour1': instance.mouth_upper_lip_right_contour1,
      'mouth_upper_lip_right_contour2': instance.mouth_upper_lip_right_contour2,
      'mouth_upper_lip_right_contour3': instance.mouth_upper_lip_right_contour3,
      'mouth_upper_lip_top': instance.mouth_upper_lip_top,
      'nose_contour_left1': instance.nose_contour_left1,
      'nose_contour_left2': instance.nose_contour_left2,
      'nose_contour_left3': instance.nose_contour_left3,
      'nose_contour_lower_middle': instance.nose_contour_lower_middle,
      'nose_contour_right1': instance.nose_contour_right1,
      'nose_contour_right2': instance.nose_contour_right2,
      'nose_contour_right3': instance.nose_contour_right3,
      'nose_left': instance.nose_left,
      'nose_right': instance.nose_right,
      'nose_tip': instance.nose_tip,
      'right_eye_bottom': instance.right_eye_bottom,
      'right_eye_center': instance.right_eye_center,
      'right_eye_left_corner': instance.right_eye_left_corner,
      'right_eye_lower_left_quarter': instance.right_eye_lower_left_quarter,
      'right_eye_lower_right_quarter': instance.right_eye_lower_right_quarter,
      'right_eye_pupil': instance.right_eye_pupil,
      'right_eye_right_corner': instance.right_eye_right_corner,
      'right_eye_top': instance.right_eye_top,
      'right_eye_upper_left_quarter': instance.right_eye_upper_left_quarter,
      'right_eye_upper_right_quarter': instance.right_eye_upper_right_quarter,
      'right_eyebrow_left_corner': instance.right_eyebrow_left_corner,
      'right_eyebrow_lower_left_quarter':
          instance.right_eyebrow_lower_left_quarter,
      'right_eyebrow_lower_middle': instance.right_eyebrow_lower_middle,
      'right_eyebrow_lower_right_quarter':
          instance.right_eyebrow_lower_right_quarter,
      'right_eyebrow_right_corner': instance.right_eyebrow_right_corner,
      'right_eyebrow_upper_left_quarter':
          instance.right_eyebrow_upper_left_quarter,
      'right_eyebrow_upper_middle': instance.right_eyebrow_upper_middle,
      'right_eyebrow_upper_right_quarter':
          instance.right_eyebrow_upper_right_quarter,
    };

PointModel _$PointModelFromJson(Map<String, dynamic> json) => PointModel(
      x: json['x'] as int,
      y: json['y'] as int,
    );

Map<String, dynamic> _$PointModelToJson(PointModel instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

FaceRectangleModel _$FaceRectangleModelFromJson(Map<String, dynamic> json) =>
    FaceRectangleModel(
      top: json['top'] as int,
      left: json['left'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
    );

Map<String, dynamic> _$FaceRectangleModelToJson(FaceRectangleModel instance) =>
    <String, dynamic>{
      'top': instance.top,
      'left': instance.left,
      'width': instance.width,
      'height': instance.height,
    };
