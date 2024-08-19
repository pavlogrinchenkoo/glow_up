import 'package:json_annotation/json_annotation.dart';

part 'dto.g.dart';

@JsonSerializable()
class DefaultAnalysisModel {
  final FaceRectangleModel? face_rectangle;
  final LandmarkModel? landmark;
  final AttributeModel? attributes;

  DefaultAnalysisModel({
    required this.landmark,
    required this.face_rectangle,
    required this.attributes,
  });

  factory DefaultAnalysisModel.fromJson(Map<String, dynamic> json) =>
      _$DefaultAnalysisModelFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultAnalysisModelToJson(this);
}

@JsonSerializable()
class AttributeModel {
  final GenderModel gender;
  final AgeModel age;
  final EmotionModel emotion;
  final FaceQualityModel facequality;
  final BeautyModel beauty;
  final SkinStatusModel skinstatus;
  final GlassModel glass;

  AttributeModel({
    required this.gender,
    required this.age,
    required this.emotion,
    required this.facequality,
    required this.beauty,
    required this.skinstatus,
    required this.glass,
  });

  factory AttributeModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeModelToJson(this);
}

@JsonSerializable()
class GenderModel {
  final String value;

  GenderModel({
    required this.value,
  });

  factory GenderModel.fromJson(Map<String, dynamic> json) =>
      _$GenderModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenderModelToJson(this);
}

@JsonSerializable()
class AgeModel {
  final int value;

  AgeModel({
    required this.value,
  });

  factory AgeModel.fromJson(Map<String, dynamic> json) =>
      _$AgeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AgeModelToJson(this);
}

@JsonSerializable()
class EmotionModel {
  final double anger;
  final double disgust;
  final double fear;
  final double happiness;
  final double neutral;
  final double sadness;
  final double surprise;

  EmotionModel({
    required this.anger,
    required this.disgust,
    required this.fear,
    required this.happiness,
    required this.neutral,
    required this.sadness,
    required this.surprise,
  });

  factory EmotionModel.fromJson(Map<String, dynamic> json) =>
      _$EmotionModelFromJson(json);

  Map<String, dynamic> toJson() => _$EmotionModelToJson(this);

  String get dominantEmotion {
    final emotions = {
      'anger': anger,
      'disgust': disgust,
      'fear': fear,
      'happiness': happiness,
      'neutral': neutral,
      'sadness': sadness,
      'surprise': surprise,
    };

    return emotions.entries.reduce((a, b) => a.value > b.value ? a : b).key;
  }
}

@JsonSerializable()
class FaceQualityModel {
  final double value;

  FaceQualityModel({
    required this.value,
  });

  factory FaceQualityModel.fromJson(Map<String, dynamic> json) =>
      _$FaceQualityModelFromJson(json);

  Map<String, dynamic> toJson() => _$FaceQualityModelToJson(this);
}

@JsonSerializable()
class BeautyModel {
  final double female_score;
  final double male_score;

  BeautyModel({
    required this.female_score,
    required this.male_score,
  });

  factory BeautyModel.fromJson(Map<String, dynamic> json) =>
      _$BeautyModelFromJson(json);

  Map<String, dynamic> toJson() => _$BeautyModelToJson(this);
}

@JsonSerializable()
class SkinStatusModel {
  final double health;
  final double stain;
  final double dark_circle;
  final double acne;

  SkinStatusModel({
    required this.health,
    required this.stain,
    required this.dark_circle,
    required this.acne,
  });

  factory SkinStatusModel.fromJson(Map<String, dynamic> json) =>
      _$SkinStatusModelFromJson(json);

  Map<String, dynamic> toJson() => _$SkinStatusModelToJson(this);
}

@JsonSerializable()
class GlassModel {
  final String value;

  GlassModel({
    required this.value,
  });

  factory GlassModel.fromJson(Map<String, dynamic> json) =>
      _$GlassModelFromJson(json);

  Map<String, dynamic> toJson() => _$GlassModelToJson(this);
}

@JsonSerializable()
class LandmarkModel {
  final PointModel? contour_chin;
  final PointModel? contour_left1;
  final PointModel? contour_left2;
  final PointModel? contour_left3;
  final PointModel? contour_left4;
  final PointModel? contour_left5;
  final PointModel? contour_left6;
  final PointModel? contour_left7;
  final PointModel? contour_left8;
  final PointModel? contour_left9;
  final PointModel? contour_right1;
  final PointModel? contour_right2;
  final PointModel? contour_right3;
  final PointModel? contour_right4;
  final PointModel? contour_right5;
  final PointModel? contour_right6;
  final PointModel? contour_right7;
  final PointModel? contour_right8;
  final PointModel? contour_right9;
  final PointModel? left_eye_bottom;
  final PointModel? left_eye_center;
  final PointModel? left_eye_left_corner;
  final PointModel? left_eye_lower_left_quarter;
  final PointModel? left_eye_lower_right_quarter;
  final PointModel? left_eye_pupil;
  final PointModel? left_eye_right_corner;
  final PointModel? left_eye_top;
  final PointModel? left_eye_upper_left_quarter;
  final PointModel? left_eye_upper_right_quarter;
  final PointModel? left_eyebrow_left_corner;
  final PointModel? left_eyebrow_lower_left_quarter;
  final PointModel? left_eyebrow_lower_middle;
  final PointModel? left_eyebrow_lower_right_quarter;
  final PointModel? left_eyebrow_right_corner;
  final PointModel? left_eyebrow_upper_left_quarter;
  final PointModel? left_eyebrow_upper_middle;
  final PointModel? left_eyebrow_upper_right_quarter;
  final PointModel? mouth_left_corner;
  final PointModel? mouth_lower_lip_bottom;
  final PointModel? mouth_lower_lip_left_contour1;
  final PointModel? mouth_lower_lip_left_contour2;
  final PointModel? mouth_lower_lip_left_contour3;
  final PointModel? mouth_lower_lip_right_contour1;
  final PointModel? mouth_lower_lip_right_contour2;
  final PointModel? mouth_lower_lip_right_contour3;
  final PointModel? mouth_lower_lip_top;
  final PointModel? mouth_right_corner;
  final PointModel? mouth_upper_lip_bottom;
  final PointModel? mouth_upper_lip_left_contour1;
  final PointModel? mouth_upper_lip_left_contour2;
  final PointModel? mouth_upper_lip_left_contour3;
  final PointModel? mouth_upper_lip_right_contour1;
  final PointModel? mouth_upper_lip_right_contour2;
  final PointModel? mouth_upper_lip_right_contour3;
  final PointModel? mouth_upper_lip_top;
  final PointModel? nose_contour_left1;
  final PointModel? nose_contour_left2;
  final PointModel? nose_contour_left3;
  final PointModel? nose_contour_lower_middle;
  final PointModel? nose_contour_right1;
  final PointModel? nose_contour_right2;
  final PointModel? nose_contour_right3;
  final PointModel? nose_left;
  final PointModel? nose_right;
  final PointModel? nose_tip;
  final PointModel? right_eye_bottom;
  final PointModel? right_eye_center;
  final PointModel? right_eye_left_corner;
  final PointModel? right_eye_lower_left_quarter;
  final PointModel? right_eye_lower_right_quarter;
  final PointModel? right_eye_pupil;
  final PointModel? right_eye_right_corner;
  final PointModel? right_eye_top;
  final PointModel? right_eye_upper_left_quarter;
  final PointModel? right_eye_upper_right_quarter;
  final PointModel? right_eyebrow_left_corner;
  final PointModel? right_eyebrow_lower_left_quarter;
  final PointModel? right_eyebrow_lower_middle;
  final PointModel? right_eyebrow_lower_right_quarter;
  final PointModel? right_eyebrow_right_corner;
  final PointModel? right_eyebrow_upper_left_quarter;
  final PointModel? right_eyebrow_upper_middle;
  final PointModel? right_eyebrow_upper_right_quarter;

  LandmarkModel({
    this.contour_chin,
    this.contour_left1,
    this.contour_left2,
    this.contour_left3,
    this.contour_left4,
    this.contour_left5,
    this.contour_left6,
    this.contour_left7,
    this.contour_left8,
    this.contour_left9,
    this.contour_right1,
    this.contour_right2,
    this.contour_right3,
    this.contour_right4,
    this.contour_right5,
    this.contour_right6,
    this.contour_right7,
    this.contour_right8,
    this.contour_right9,
    this.left_eye_bottom,
    this.left_eye_center,
    this.left_eye_left_corner,
    this.left_eye_lower_left_quarter,
    this.left_eye_lower_right_quarter,
    this.left_eye_pupil,
    this.left_eye_right_corner,
    this.left_eye_top,
    this.left_eye_upper_left_quarter,
    this.left_eye_upper_right_quarter,
    this.left_eyebrow_left_corner,
    this.left_eyebrow_lower_left_quarter,
    this.left_eyebrow_lower_middle,
    this.left_eyebrow_lower_right_quarter,
    this.left_eyebrow_right_corner,
    this.left_eyebrow_upper_left_quarter,
    this.left_eyebrow_upper_middle,
    this.left_eyebrow_upper_right_quarter,
    this.mouth_left_corner,
    this.mouth_lower_lip_bottom,
    this.mouth_lower_lip_left_contour1,
    this.mouth_lower_lip_left_contour2,
    this.mouth_lower_lip_left_contour3,
    this.mouth_lower_lip_right_contour1,
    this.mouth_lower_lip_right_contour2,
    this.mouth_lower_lip_right_contour3,
    this.mouth_lower_lip_top,
    this.mouth_right_corner,
    this.mouth_upper_lip_bottom,
    this.mouth_upper_lip_left_contour1,
    this.mouth_upper_lip_left_contour2,
    this.mouth_upper_lip_left_contour3,
    this.mouth_upper_lip_right_contour1,
    this.mouth_upper_lip_right_contour2,
    this.mouth_upper_lip_right_contour3,
    this.mouth_upper_lip_top,
    this.nose_contour_left1,
    this.nose_contour_left2,
    this.nose_contour_left3,
    this.nose_contour_lower_middle,
    this.nose_contour_right1,
    this.nose_contour_right2,
    this.nose_contour_right3,
    this.nose_left,
    this.nose_right,
    this.nose_tip,
    this.right_eye_bottom,
    this.right_eye_center,
    this.right_eye_left_corner,
    this.right_eye_lower_left_quarter,
    this.right_eye_lower_right_quarter,
    this.right_eye_pupil,
    this.right_eye_right_corner,
    this.right_eye_top,
    this.right_eye_upper_left_quarter,
    this.right_eye_upper_right_quarter,
    this.right_eyebrow_left_corner,
    this.right_eyebrow_lower_left_quarter,
    this.right_eyebrow_lower_middle,
    this.right_eyebrow_lower_right_quarter,
    this.right_eyebrow_right_corner,
    this.right_eyebrow_upper_left_quarter,
    this.right_eyebrow_upper_middle,
    this.right_eyebrow_upper_right_quarter,
  });

  factory LandmarkModel.fromJson(Map<String, dynamic> json) =>
      _$LandmarkModelFromJson(json);

  Map<String, dynamic> toJson() => _$LandmarkModelToJson(this);
}

@JsonSerializable()
class PointModel {
  final int x;
  final int y;

  PointModel({
    required this.x,
    required this.y,
  });

  factory PointModel.fromJson(Map<String, dynamic> json) =>
      _$PointModelFromJson(json);

  Map<String, dynamic> toJson() => _$PointModelToJson(this);
}

@JsonSerializable()
class FaceRectangleModel {
  final int top;
  final int left;
  final int width;
  final int height;

  FaceRectangleModel({
    required this.top,
    required this.left,
    required this.width,
    required this.height,
  });

  factory FaceRectangleModel.fromJson(Map<String, dynamic> json) =>
      _$FaceRectangleModelFromJson(json);

  Map<String, dynamic> toJson() => _$FaceRectangleModelToJson(this);
}
