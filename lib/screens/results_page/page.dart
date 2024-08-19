import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/results_page/bloc.dart';
import 'package:glow_up/screens/results_page/widgets/invite_friends/bottom_sheet.dart';
import 'package:glow_up/screens/results_page/widgets/result_footer/result_footer_widget.dart';
import 'package:glow_up/screens/results_page/widgets/result_footer/result_footer_button_without_blur_widget.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/analytics_amplitude.dart';
import 'package:glow_up/utils/custom_stream_builder.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_app_bar.dart';
import 'package:glow_up/widgets/custom_boxeh.dart';
import 'package:glow_up/widgets/custom_card_swiper.dart';
import 'package:glow_up/widgets/custom_circular_progress_indicator.dart';
import 'package:glow_up/widgets/custom_scaffold.dart';
import 'package:glow_up/widgets/custom_show_big_results.dart';
import 'package:glow_up/widgets/custom_show_small_results.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

@RoutePage()
class ResultsPage extends StatefulWidget {
  final bool activateSheet;

  const ResultsPage({super.key, required this.activateSheet});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  final ResultsBloc _bloc = ResultsBloc();
  final ScreenshotController screenshotController = ScreenshotController();

  @override
  void initState() {
    super.initState();
    _bloc.init(
      context,
      screenshotController,
    );
    if (widget.activateSheet) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => const FriendsBottomSheet(),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final S s = S.of(context);
    double newHeight = 0;
    return PopScope(
      canPop: false,
      child: CustomStreamBuilder(
        bloc: _bloc,
        builder: (context, ScreenState state) {
          if (newHeight == 0) {
            newHeight = height > 900
                ? height / 2.2
                : height > 840
                    ? state.useBlurBlock
                        ? height / 2.19
                        : height / 2.15
                    : height < 670
                        ? height / 2.08
                        : height / 2.0;
          }
          return state.loading
              ? const Center(child: AppCircularProgressIndicator())
              : Stack(
                  children: [
                    Screenshot(
                      controller: screenshotController,
                      child: CustomScaffold(
                        appBar: CustomAppBar(
                          title: state.isTakingPhoto ? "" : s.titleResults,
                          useRightButton: state.isTakingPhoto ? false : true,
                          useLeftButton: state.isTakingPhoto ? false : true,
                          leftIcon: Assets.images.goToAllResults,
                          leftOnClick: () async {
                            _bloc.checkUploadLimitAnalyze(context);
                            AnalyticsAmplitude()
                                .logResultsRetakePhotoIfLimitAllows();
                          },
                          rightIcon: Assets.images.settings,
                          rightOnClick: () {
                            _bloc.toMenu(context);
                            AnalyticsAmplitude().logResultsGoToMenu();
                          },
                        ),
                        body: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: BC.navyGrey,
                          ),
                          child: Stack(
                            children: [
                              state.useBlurBlock
                                  ? const SizedBox.shrink()
                                  : CustomBokeh(
                                      size: height / 2,
                                      scaleX: height < 840 ? 0.3 : 0.3,
                                      scaleY: height < 840 ? 0.4 : 0.5,
                                      alignment: Alignment.bottomCenter,
                                      transform: const Offset(0, Sizes.s160),
                                      shape: BoxShape.circle,
                                      angleInRadians: pi / Sizes.s2,
                                    ),
                              Column(
                                children: [
                                  height < 840
                                      ? const SizedBox.shrink()
                                      : Space.h16,
                                  CustomShowSmallResults(
                                    useBlurBlock: state.useBlurBlock,
                                    frontIconPath: state.frontIconPath ?? "",
                                    s: s,
                                    personalEstimate: state
                                            .cardSaveYourResultsModel
                                            ?.saveMainResultsModel
                                            .personalEstimate ??
                                        0,
                                    topWorld: state
                                            .cardSaveYourResultsModel
                                            ?.saveMainResultsModel
                                            .personalEstimateInWorldEnum
                                            .getTitle(s) ??
                                        "",
                                    useAnalysisModel: true,
                                    defaultAnalysisModel:
                                        state.defaultAnalysisModel,
                                    frontIconSize: state.frontIconSize,
                                  ),
                                  Space.h8,
                                  CustomCardSwiper(
                                    height: newHeight,
                                    width: width,
                                    itemCard: 6,
                                    color: BC.navyGrey,
                                    useBlur: state.useBlurBlock,
                                    autoSwipe: false,
                                    onIndexChanged: (index) =>
                                        _bloc.setActionButton(index),
                                    itemBuilder: (_, index) {
                                      return Column(children: [
                                        getItemByIndex(index, state, height, s),
                                        state.useBlurBlock
                                            ? const SizedBox.shrink()
                                            : height < 840
                                                ? Space.h16
                                                : Space.h24,
                                      ]);
                                    },
                                  ),
                                  !state.useBlurBlock
                                      ? ResultFooterButtonWithoutBlurWidget(
                                          state: state,
                                          height: height,
                                          s: s,
                                          toDeep: () {
                                            _bloc.toDeep(context);
                                            AnalyticsAmplitude()
                                                .logResultsMakeADeepScanning();
                                          },
                                          share: () async {
                                            await _bloc
                                                .saveImageToCacheForSharing(
                                                    screenshotController);
                                            await _bloc.sharingWithFriend();
                                            AnalyticsAmplitude()
                                                .logResultsShareWithFriend();
                                          },
                                        )
                                      : const SizedBox.shrink(),
                                ],
                              ),
                              state.useBlurBlock
                                  ? ResultFooterWidget(
                                      state: state,
                                      height: height,
                                      s: s,
                                      revealResults: () {
                                        _bloc.revealResults(context);
                                        AnalyticsAmplitude()
                                            .logRevealYourResults();
                                      },
                                      toInviteFriends: () {
                                        showModalBottomSheet<void>(
                                          context: context,
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          builder: (context) =>
                                              const FriendsBottomSheet(),
                                        );
                                        AnalyticsAmplitude()
                                            .logInviteYourFriend();
                                      },
                                    )
                                  : const SizedBox.shrink(),
                            ],
                          ),
                        ),
                        activateFullSafeArea: true,
                      ),
                    ),
                    if (state.isTakingPhoto && !state.useBlurBlock)
                      const Center(
                        child: AppCircularProgressIndicator(),
                      ),
                  ],
                );
        },
      ),
    );
  }

  Widget getItemByIndex(int index, ScreenState state, double height, S s) {
    switch (index) {
      case 0:
        return CustomShowBigResults(
          listModels:
              state.cardShowYourResultsModel?.showMainCardResultsModelList ??
                  [],
          useBlur: state.useBlurBlock,
          overallProgress: state.cardSaveYourResultsModel?.saveMainResultsModel
                  .overallEstimate ??
              0,
          potentialProgress: state.cardSaveYourResultsModel
                  ?.saveMainResultsModel.potentialEstimate ??
              0,
          age: state.cardSaveYourResultsModel?.saveMainResultsModel.age ?? 0,
          height: height,
          index: index,
        );
      case 1:
        return CustomShowBigResults(
          listModels:
              state.cardShowYourResultsModel?.showFaceCardResultsModelList ??
                  [],
          useBlur: state.useBlurBlock,
          titleText: state
              .cardSaveYourResultsModel?.saveFaceResultsModel.faceAnalyzingText
              .getTitle(s),
          textPercent: state
              .cardSaveYourResultsModel?.saveFaceResultsModel.faceAnalyzingAPI,
          isFirstCard: false,
          height: height,
          index: index,
        );
      case 2:
        return CustomShowBigResults(
          listModels:
              state.cardShowYourResultsModel?.showSkinCardResultsModelList ??
                  [],
          useBlur: state.useBlurBlock,
          titleText: state
              .cardSaveYourResultsModel?.saveSkinResultsModel.skinAnalyzingText
              .getTitle(s),
          textPercent: state
              .cardSaveYourResultsModel?.saveSkinResultsModel.skinAnalyzingAPI,
          isFirstCard: false,
          height: height,
          index: index,
        );
      case 3:
        return CustomShowBigResults(
          listModels:
              state.cardShowYourResultsModel?.showHairCardResultsModelList ??
                  [],
          useBlur: state.useBlurBlock,
          titleText: state
              .cardSaveYourResultsModel?.saveHairResultsModel.hairAnalyzingText
              .getTitle(s),
          textPercent: state
              .cardSaveYourResultsModel?.saveHairResultsModel.hairAnalyzingAPI,
          isFirstCard: false,
          height: height,
          index: index,
        );
      case 4:
        return CustomShowBigResults(
          listModels:
              state.cardShowYourResultsModel?.showEyesCardResultsModelList ??
                  [],
          useBlur: state.useBlurBlock,
          titleText: state
              .cardSaveYourResultsModel?.saveEyesResultsModel.eyesAnalyzingText
              .getTitle(s),
          textPercent: state
              .cardSaveYourResultsModel?.saveEyesResultsModel.eyesAnalyzingAPI,
          isFirstCard: false,
          height: height,
          index: index,
        );
      case 5:
        return CustomShowBigResults(
          listModels:
              state.cardShowYourResultsModel?.showFitnessCardResultsModelList ??
                  [],
          useBlur: state.useBlurBlock,
          titleText: state.cardSaveYourResultsModel?.saveFitnessResultsModel
              .fitnessAnalyzing
              .getTitle(s),
          textPercent: state.cardSaveYourResultsModel?.saveFitnessResultsModel
              .fitnessAnalyzingAPI,
          isFirstCard: false,
          height: height,
          index: index,
        );
      default:
        return CustomShowBigResults(
          listModels:
              state.cardShowYourResultsModel?.showMainCardResultsModelList ??
                  [],
          useBlur: state.useBlurBlock,
          overallProgress: state.cardSaveYourResultsModel?.saveMainResultsModel
                  .overallEstimate ??
              0,
          potentialProgress: state.cardSaveYourResultsModel
                  ?.saveMainResultsModel.potentialEstimate ??
              0,
          age: state.cardSaveYourResultsModel?.saveMainResultsModel.age ?? 0,
          height: height,
          index: index,
        );
    }
  }
}
