import 'package:auto_route/auto_route.dart';
import 'package:glow_up/api/guide/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/routers/routes.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_instructions/guide_eyes_instruction.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_instructions/guide_face_instruction.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_instructions/guide_fashion_instruction.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_instructions/guide_fitness_instruction.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_instructions/guide_grooming_instruction.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_instructions/guide_hair_instruction.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_instructions/guide_jawline_instruction.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_instructions/guide_skin_instruction.dart';
import 'package:glow_up/utils/bloc_base.dart';
import 'package:flutter/cupertino.dart';

class GuideInfoBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  GuideInfoBloc() {
    setState(ScreenState());
  }

  void toMenu(BuildContext context) {
    context.router.push(const MenuRoute());
  }
  void back(BuildContext context) {
    context.router.back();
  }

  String getTitleAppBar(EnumCheckGuideModel enumCheckGuideModel, S s) {
    switch (enumCheckGuideModel) {
      case EnumCheckGuideModel.face:
        return "${s.face} Guide";
      case EnumCheckGuideModel.skin:
        return "${s.skin} Guide";
      case EnumCheckGuideModel.hair:
        return "${s.hair} Guide";
      case EnumCheckGuideModel.jawline:
        return "${s.jawline} Guide";
      case EnumCheckGuideModel.eyes:
        return "${s.eyes} Guide";
      case EnumCheckGuideModel.fitness:
        return "${s.fitness} Guide";
      case EnumCheckGuideModel.fashion:
        return "${s.fashion} Guide";
      case EnumCheckGuideModel.grooming:
        return "${s.grooming} Guide";
      default:
        return "";
    }
  }

  void getGuideInstruction(EnumCheckGuideModel enumCheckGuideModel) {
    switch (enumCheckGuideModel) {
      case EnumCheckGuideModel.face:
        setState(currentState.copyWith(
            widgetInstruction: const GuideFaceInstruction()));
      case EnumCheckGuideModel.skin:
        setState(currentState.copyWith(
            widgetInstruction: const GuideSkinInstruction()));
      case EnumCheckGuideModel.hair:
        setState(currentState.copyWith(
            widgetInstruction: const GuideHairInstruction()));
      case EnumCheckGuideModel.jawline:
        setState(currentState.copyWith(
            widgetInstruction: const GuideJawlineInstruction()));
      case EnumCheckGuideModel.eyes:
        setState(currentState.copyWith(
            widgetInstruction: const GuideEyesInstruction()));
      case EnumCheckGuideModel.fitness:
        setState(currentState.copyWith(
            widgetInstruction: const GuideFitnessInstruction()));
      case EnumCheckGuideModel.fashion:
        setState(currentState.copyWith(
            widgetInstruction: const GuideFashionInstruction()));
      case EnumCheckGuideModel.grooming:
        setState(currentState.copyWith(
            widgetInstruction: const GuideGroomingInstruction()));
      default:
        setState(currentState.copyWith(
            widgetInstruction: const GuideFaceInstruction()));
    }
  }
}

class ScreenState {
  final bool loading;
  final Widget? widgetInstruction;

  ScreenState({this.loading = false, this.widgetInstruction});

  ScreenState copyWith({bool? loading, Widget? widgetInstruction}) {
    return ScreenState(
      loading: loading ?? this.loading,
      widgetInstruction: widgetInstruction ?? this.widgetInstruction,
    );
  }
}
