import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/history_page/bloc.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/analytics_amplitude.dart';
import 'package:glow_up/utils/custom_stream_builder.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_app_bar.dart';
import 'package:glow_up/widgets/custom_boxeh.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:glow_up/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:glow_up/widgets/custom_show_small_results.dart';

@RoutePage()
class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final HistoryBloc _bloc = HistoryBloc();

  @override
  void initState() {
    _bloc.init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);
    final height = MediaQuery.of(context).size.height;
    return CustomStreamBuilder(
      bloc: _bloc,
      builder: (context, ScreenState state) {
        return CustomScaffold(
          appBar: CustomAppBar(
            title: s.titleHistory,
            useLeftButton: false,
            useRightButton: true,
            rightIcon: Assets.images.settings,
            rightOnClick: () {
              _bloc.toMenu(context);
              AnalyticsAmplitude().logHistoryGoToMenu();
            },
            usePoint: true,
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: BC.pink,
            ),
            child: Stack(
              children: [
                CustomBokeh(
                  size: height / 1,
                  scaleX: 1,
                  scaleY: 0.6,
                  alignment: Alignment.bottomCenter,
                  transform: Offset(Sizes.scale, height / 3.5),
                  shape: BoxShape.rectangle,
                  angleInRadians: pi / Sizes.s2,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height / 1.50,
                      child: ListView(
                        children: [
                          if (state.historyList != null)
                            ...state.historyList!
                                .map((element) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: Sizes.s4),
                                      child: CustomShowSmallResults(
                                        useBlurBlock: false,
                                        frontIconPath: element.photo,
                                        isDeepScanPhoto:
                                            element.isPhotoDeepScan,
                                        s: s,
                                        personalEstimate: element.titleValue,
                                        topWorld: element.subtitle,
                                      ),
                                    ))
                                .toList()
                          else
                            const SizedBox.shrink(),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: Sizes.s18),
                      child: CustomButton(
                        s.makeNewScan,
                        onTap: () {
                          _bloc.checkUploadLimitAnalyze(context);
                          AnalyticsAmplitude().logHistoryMakeNewScan();
                        },
                        outLine: true,
                        borderColor: BC.purpleViolet,
                        colorButton: BC.purpleViolet,
                        borderRadius: AppRadius.r18,
                        padding: Sizes.s23,
                        svgGenImage: Assets.images.makeScan,
                        spaceBetweenTextImage: Sizes.s8,
                        textColor: BC.white,
                        imageColor: BC.white,
                      ),
                    ),
                    SizedBox(
                      height: height / 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
          activateFullSafeArea: true,
        );
      },
    );
  }
}
