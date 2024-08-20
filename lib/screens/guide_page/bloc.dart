import 'package:auto_route/auto_route.dart';
import 'package:glow_up/api/guide/dto.dart';
import 'package:glow_up/utils/bloc_base.dart';
import 'package:flutter/cupertino.dart';

class GuideBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  GuideBloc() {
    setState(ScreenState());
  }

  void toMenu(BuildContext context) {
    context.router.maybePop();
  }

  GuideModel getModelGuide(int index) {
    final Map<int, GuideModel> guideMap = {
      0: GuideModel(
        guideTextGroupEnum: GuideTextGroupEnum.face,
        guideImageGroupEnum: GuideImageGroupEnum.face,
        guideOnTapGroupEnum: GuideOnTapGroupEnum.face,
      ),
      1: GuideModel(
        guideTextGroupEnum: GuideTextGroupEnum.skin,
        guideImageGroupEnum: GuideImageGroupEnum.skin,
        guideOnTapGroupEnum: GuideOnTapGroupEnum.skin,
      ),
      2: GuideModel(
        guideTextGroupEnum: GuideTextGroupEnum.hair,
        guideImageGroupEnum: GuideImageGroupEnum.hair,
        guideOnTapGroupEnum: GuideOnTapGroupEnum.hair,
      ),
      3: GuideModel(
        guideTextGroupEnum: GuideTextGroupEnum.jawline,
        guideImageGroupEnum: GuideImageGroupEnum.jawline,
        guideOnTapGroupEnum: GuideOnTapGroupEnum.jawline,
      ),
      4: GuideModel(
        guideTextGroupEnum: GuideTextGroupEnum.eyes,
        guideImageGroupEnum: GuideImageGroupEnum.eyes,
        guideOnTapGroupEnum: GuideOnTapGroupEnum.eyes,
      ),
      5: GuideModel(
        guideTextGroupEnum: GuideTextGroupEnum.fitness,
        guideImageGroupEnum: GuideImageGroupEnum.fitness,
        guideOnTapGroupEnum: GuideOnTapGroupEnum.fitness,
      ),
      6: GuideModel(
        guideTextGroupEnum: GuideTextGroupEnum.fashion,
        guideImageGroupEnum: GuideImageGroupEnum.fashion,
        guideOnTapGroupEnum: GuideOnTapGroupEnum.fashion,
      ),
      7: GuideModel(
        guideTextGroupEnum: GuideTextGroupEnum.makeup,
        guideImageGroupEnum: GuideImageGroupEnum.makeup,
        guideOnTapGroupEnum: GuideOnTapGroupEnum.makeup,
      ),
    };

    return guideMap[index] ??
        GuideModel(
          guideTextGroupEnum: GuideTextGroupEnum.face,
          guideImageGroupEnum: GuideImageGroupEnum.face,
          guideOnTapGroupEnum: GuideOnTapGroupEnum.face,
        );
  }
}

class ScreenState {
  final bool loading;

  ScreenState({this.loading = false});

  ScreenState copyWith({bool? loading}) {
    return ScreenState(loading: loading ?? this.loading);
  }
}
