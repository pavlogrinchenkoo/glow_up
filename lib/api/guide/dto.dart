import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/routers/routes.dart';

part 'dto.g.dart';

@JsonSerializable()
class GuideModel {
  GuideTextGroupEnum guideTextGroupEnum;
  GuideImageGroupEnum guideImageGroupEnum;
  GuideOnTapGroupEnum guideOnTapGroupEnum;

  GuideModel({
    required this.guideTextGroupEnum,
    required this.guideImageGroupEnum,
    required this.guideOnTapGroupEnum,
  });

  factory GuideModel.fromJson(Map<String, dynamic> json) =>
      _$GuideModelFromJson(json);

  Map<String, dynamic> toJson() => _$GuideModelToJson(this);
}

enum GuideTextGroupEnum {
  face,
  skin,
  hair,
  jawline,
  eyes,
  fitness,
  fashion,
  makeup;

  const GuideTextGroupEnum();

  String getTitle(S s) {
    switch (this) {
      case face:
        return s.face;
      case skin:
        return s.skin;
      case hair:
        return s.hair;
      case jawline:
        return s.jawlineS;
      case eyes:
        return s.eyes;
      case fitness:
        return s.fitness;
      case fashion:
        return s.fashion;
      case makeup:
        return s.makeupText;
      default:
        return "";
    }
  }
}

enum GuideImageGroupEnum {
  face,
  skin,
  hair,
  jawline,
  eyes,
  fitness,
  fashion,
  makeup;

  const GuideImageGroupEnum();

  AssetGenImage getImage() {
    switch (this) {
      case face:
        return Assets.images.guide.faceGuide;
      case skin:
        return Assets.images.guide.skinGuide;
      case hair:
        return Assets.images.guide.hairGuide;
      case jawline:
        return Assets.images.guide.jawlineGuide;
      case eyes:
        return Assets.images.guide.eyesGuide;
      case fitness:
        return Assets.images.guide.fitnessGuide;
      case fashion:
        return Assets.images.guide.fashionGuide;
      case makeup:
        return Assets.images.guide.makeupGuide;
      default:
        return Assets.images.guide.faceGuide;
    }
  }
}

enum GuideOnTapGroupEnum {
  face,
  skin,
  hair,
  jawline,
  eyes,
  fitness,
  fashion,
  makeup;

  const GuideOnTapGroupEnum();

  dynamic getOnTap(BuildContext context) {
    switch (this) {
      case face:
        return context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.face));
      case skin:
        return context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.skin));
      case hair:
        return context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.hair));
      case jawline:
        return context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.jawline));
      case eyes:
        return context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.eyes));
      case fitness:
        return context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.fitness));
      case fashion:
        return context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.fashion));
      case makeup:
        return context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.makeup));
      default:
        return context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.face));
    }
  }
}

enum EnumCheckGuideModel {
  face,
  skin,
  hair,
  jawline,
  eyes,
  fitness,
  fashion,
  makeup;

  const EnumCheckGuideModel();
}
