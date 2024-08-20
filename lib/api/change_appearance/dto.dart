// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:glow_up/api/guide/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:glow_up/routers/routes.dart';

part 'dto.g.dart';

@JsonSerializable()
class ChangeAppearanceModel {
  ChooseTextAppearanceEnum chooseTextAppearanceEnum;
  ChooseActionAppearanceEnum chooseActionAppearanceEnum;

  ChangeAppearanceModel(
      {required this.chooseTextAppearanceEnum,
      required this.chooseActionAppearanceEnum});

  factory ChangeAppearanceModel.fromJson(Map<String, dynamic> json) =>
      _$ChangeAppearanceModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeAppearanceModelToJson(this);
}

enum ChooseTextAppearanceEnum {
  face,
  skin,
  hair,
  jawline,
  eyes,
  fitness,
  fashion,
  grooming;

  const ChooseTextAppearanceEnum();

  String getTitle(ChooseTextAppearanceEnum colorGroupEnum, S s) {
    switch (this) {
      case ChooseTextAppearanceEnum.face:
        return s.improveYourFaceButton;
      case ChooseTextAppearanceEnum.skin:
        return s.improveYourSkinButton;
      case ChooseTextAppearanceEnum.hair:
        return s.improveYourHairButton;
      case ChooseTextAppearanceEnum.jawline:
        return s.improveYourJawlineButton;
      case ChooseTextAppearanceEnum.eyes:
        return s.improveYourEyesButton;
      case ChooseTextAppearanceEnum.fitness:
        return s.improveYourFitnessButton;
      case ChooseTextAppearanceEnum.fashion:
        return s.improveYourFashionButton;
      case ChooseTextAppearanceEnum.grooming:
        return s.improveYourGroomingButton;
      default:
        return s.improveYourFaceButton;
    }
  }
}

enum ChooseActionAppearanceEnum {
  face,
  skin,
  hair,
  jawline,
  eyes,
  fitness,
  fashion,
  grooming;

  const ChooseActionAppearanceEnum();

  VoidCallback getAction(
      ChooseActionAppearanceEnum colorGroupEnum, BuildContext context) {
    switch (this) {
      case ChooseActionAppearanceEnum.face:
        return () => context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.face));
      case ChooseActionAppearanceEnum.skin:
        return () => context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.skin));
      case ChooseActionAppearanceEnum.hair:
        return () => context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.hair));
      case ChooseActionAppearanceEnum.jawline:
        return () => context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.jawline));
      case ChooseActionAppearanceEnum.eyes:
        return () => context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.eyes));
      case ChooseActionAppearanceEnum.fitness:
        return () => context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.fitness));
      case ChooseActionAppearanceEnum.fashion:
        return () => context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.fashion));
      case ChooseActionAppearanceEnum.grooming:
        return () => context.router.push(
            GuideInfoRoute(enumCheckGuideModel: EnumCheckGuideModel.makeup));
      default:
        return () {};
    }
  }
}
