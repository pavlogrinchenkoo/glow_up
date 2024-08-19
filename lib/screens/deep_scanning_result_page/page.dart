import 'package:auto_route/auto_route.dart';
import 'package:glow_up/api/deep_results/dto.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/deep_scanning_result_page/bloc.dart';
import 'package:glow_up/screens/deep_scanning_result_page/widgets/deep_scanning_list_item/list_item_fifth.dart';
import 'package:glow_up/screens/deep_scanning_result_page/widgets/deep_scanning_list_item/list_item_first.dart';
import 'package:glow_up/screens/deep_scanning_result_page/widgets/deep_scanning_list_item/list_item_fourth.dart';
import 'package:glow_up/screens/deep_scanning_result_page/widgets/deep_scanning_list_item/list_item_second.dart';
import 'package:glow_up/screens/deep_scanning_result_page/widgets/deep_scanning_list_item/list_item_seventh.dart';
import 'package:glow_up/screens/deep_scanning_result_page/widgets/deep_scanning_list_item/list_item_sixth.dart';
import 'package:glow_up/screens/deep_scanning_result_page/widgets/deep_scanning_list_item/list_item_third.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/analytics_amplitude.dart';
import 'package:glow_up/utils/custom_stream_builder.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_app_bar.dart';
import 'package:glow_up/widgets/custom_circular_progress_indicator.dart';
import 'package:glow_up/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DeepScanningResultPage extends StatefulWidget {
  const DeepScanningResultPage({super.key});

  @override
  State<DeepScanningResultPage> createState() => _DeepScanningResultPageState();
}

class _DeepScanningResultPageState extends State<DeepScanningResultPage> {
  final DeepScanningResultBloc _bloc = DeepScanningResultBloc();

  @override
  void initState() {
    _bloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);
    return PopScope(
      canPop: false,
      child: CustomStreamBuilder(
        bloc: _bloc,
        builder: (context, ScreenState state) {
          return CustomScaffold(
            appBar: CustomAppBar(
              title: s.deepScanningResult,
              useLeftButton: true,
              useRightButton: true,
              rightIcon: Assets.images.settings,
              rightOnClick: () {
                _bloc.toMenu(context);
                AnalyticsAmplitude().logDeepScanningResultsMenu();
              },
              leftIcon: Assets.images.back,
              leftOnClick: () {
                _bloc.toBack(context);
                AnalyticsAmplitude().logDeepScanningResultsBack();
              },
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: BC.navyGrey,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: BC.navyGrey,
                ),
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s20),
                child: state.proAnalysisModel == null
                    ? const Center(child: AppCircularProgressIndicator())
                    : SingleChildScrollView(
                        child: Column(
                          children: [
                            ListItemFirst(
                              valueProgress: state.valueProgressFirst,
                              onValueChanged: (value) =>
                                  _bloc.changeValueProgress(
                                      value, DeepGetNumberResultsEnum.first),
                              proAnalysisModel: state.proAnalysisModel,
                              frontIconPath: state.frontIconDeepPath,
                              deepIconPath:
                                  state.textureEnhancedBlackheads?.path ?? "",
                            ),
                            ListItemSecond(
                              valueProgress: state.valueProgressSecond,
                              onValueChanged: (value) =>
                                  _bloc.changeValueProgress(
                                      value, DeepGetNumberResultsEnum.second),
                              proAnalysisModel: state.proAnalysisModel,
                              frontIconPath: state.frontIconDeepPath,
                              deepIconPath:
                                  state.textureEnhancedPores?.path ?? "",
                            ),
                            ListItemThird(
                              valueProgress: state.valueProgressThird,
                              onValueChanged: (value) =>
                                  _bloc.changeValueProgress(
                                      value, DeepGetNumberResultsEnum.third),
                              proAnalysisModel: state.proAnalysisModel,
                              frontIconPath: state.frontIconDeepPath,
                              deepIconPath: state.brownArea?.path ?? "",
                              randomMelaninConcentration:
                                  state.randomMelaninConcentration ?? 0,
                            ),
                            ListItemFourth(
                              valueProgress: state.valueProgressFourth,
                              onValueChanged: (value) =>
                                  _bloc.changeValueProgress(
                                      value, DeepGetNumberResultsEnum.fourth),
                              proAnalysisModel: state.proAnalysisModel,
                              frontIconPath: state.frontIconDeepPath,
                              deepIconPath: state.roiOutlineMap?.path ?? "",
                            ),
                            ListItemFifth(
                              valueProgress: state.valueProgressFifth,
                              onValueChanged: (value) =>
                                  _bloc.changeValueProgress(
                                      value, DeepGetNumberResultsEnum.fifth),
                              proAnalysisModel: state.proAnalysisModel,
                              frontIconPath: state.frontIconDeepPath,
                              deepIconPath: state.redArea?.path ?? "",
                            ),
                            ListItemSixth(
                              valueProgress: state.valueProgressSixth,
                              onValueChanged: (value) =>
                                  _bloc.changeValueProgress(
                                      value, DeepGetNumberResultsEnum.sixth),
                              proAnalysisModel: state.proAnalysisModel,
                              frontIconPath: state.frontIconDeepPath,
                              deepIconPath:
                                  state.textureEnhancedLines?.path ?? "",
                            ),
                            ListItemSeventh(
                              valueProgress: state.valueProgressSeventh,
                              onValueChanged: (value) =>
                                  _bloc.changeValueProgress(
                                      value, DeepGetNumberResultsEnum.seventh),
                              proAnalysisModel: state.proAnalysisModel,
                              showImage: false,
                            ),
                          ],
                        ),
                      ),
              ),
            ),
            activateFullSafeArea: true,
          );
        },
      ),
    );
  }
}
