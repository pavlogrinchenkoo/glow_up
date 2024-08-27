import 'dart:io';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/deep_scanning_page/bloc.dart';
import 'package:glow_up/screens/deep_scanning_page/widgets/deep_footer_text.dart';
import 'package:glow_up/screens/deep_scanning_page/widgets/deep_scanning_indicator_widget.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/analytics_amplitude.dart';
import 'package:glow_up/utils/custom_stream_builder.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_app_bar.dart';
import 'package:glow_up/widgets/custom_boxeh.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:glow_up/widgets/custom_card_swiper.dart';
import 'package:glow_up/widgets/custom_circular_progress_indicator.dart';
import 'package:glow_up/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DeepScanningPage extends StatefulWidget {
  const DeepScanningPage({super.key});

  @override
  State<DeepScanningPage> createState() => _DeepScanningPageState();
}

class _DeepScanningPageState extends State<DeepScanningPage> {
  final DeepScanningBloc _bloc = DeepScanningBloc();

  @override
  void initState() {
    _bloc.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final newHeight = height > 950
        ? Platform.isIOS
            ? height / 1.9
            : height / 2.25
        : height > 840
            ? Platform.isIOS
                ? height / 2.4
                : height / 2.5
            : height > 839
                ? height / 1.9
                : Platform.isIOS
                    ? height / 1.95
                    : height / 2.2;
    return CustomStreamBuilder(
      bloc: _bloc,
      builder: (context, ScreenState state) {
        return CustomScaffold(
          appBar: state.showIndicator
              ? null
              : CustomAppBar(
                  useLeftButton: false,
                  useRightButton: true,
                  rightOnClick: () {
                    _bloc.back(context);
                    AnalyticsAmplitude().logDeepScanningClose();
                  },
                  rightIcon: Assets.images.cancel,
                ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: BC.pink,
            ),
            child: state.showCircularProgress
                ? Center(child: AppCircularProgressIndicator(color: BC.white))
                : state.showIndicator
                    ? DeepScanningIndicatorWidget(
                        valueProgress: state.valueProgress,
                        isLastText: state.isLastText,
                        bloc: _bloc,
                        s: s,
                        context: context,
                      )
                    : Stack(
                        children: [
                          CustomBokeh(
                            size: height / 1,
                            scaleY: 1,
                            scaleX: 0.4,
                            alignment: Alignment.center,
                            transform:
                            Offset(Sizes.scale, height/10),
                            shape: BoxShape.rectangle,
                            angleInRadians: pi / Sizes.s2,
                            blurWhiteHard: true,
                          ),
                          CustomBokeh(
                            size: height / 1,
                            scaleY: 1,
                            scaleX: 1,
                            alignment: Alignment.bottomCenter,
                            transform:
                            Offset(Sizes.scale, height / 2.5),
                            shape: BoxShape.rectangle,
                            angleInRadians: pi / Sizes.s2,
                            blurWhiteHard: true,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              height > 840
                                  ? SizedBox(height: height / Sizes.s20)
                                  : const SizedBox.shrink(),
                              Text(
                                s.aiPoweredSkinAnalyzer,
                                style: BS.tex24.apply(color: BC.white),
                                textAlign: TextAlign.center,
                              ),
                              Space.h8,
                              Text(
                                s.diveDeepIntoYourSkin,
                                style:
                                    BS.tex14withFont400.apply(color: BC.white),
                                textAlign: TextAlign.center,
                              ),
                              height > 840 ? Space.h40 : Space.h20,
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: Sizes.s25),
                                child: Column(
                                  children: [
                                    CustomCardSwiper(
                                      height: newHeight,
                                      width: width,
                                      itemCard: 4,
                                      color: Colors.transparent,
                                      autoSwipe: true,
                                      itemBuilder: (_, index) {
                                        return Column(
                                          children: [
                                            Center(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        AppRadius.r20),
                                                child: state
                                                    .listDeepModel[index]
                                                    .deepPhotoGroupEnum
                                                    .getImage()
                                                    .image(
                                                      fit: BoxFit.cover,
                                                    ),
                                              ),
                                            ),
                                            height > 840
                                                ? SizedBox(
                                                    height:
                                                        newHeight / Sizes.s80)
                                                : SizedBox(
                                                    height:
                                                        newHeight / Sizes.s25),
                                            Text(
                                                state.listDeepModel[index]
                                                    .deepTextGroupEnum
                                                    .getText(s),
                                                style: BS.tex20Text.apply(
                                                    color: BC.purpleViolet)),
                                            height > 950 ? Space.h32 : Space.h4,
                                            if (height > 950)
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: width / 5),
                                                child: Text(
                                                  state.listDeepModel[index]
                                                      .deepTitleGroupEnum
                                                      .getTitleText(s),
                                                  style: BS.tex14withFont500
                                                      .apply(color: BC.white),
                                                  textAlign: TextAlign.center,
                                                ),
                                              )
                                            else
                                              Text(
                                                state.listDeepModel[index]
                                                    .deepTitleGroupEnum
                                                    .getTitleText(s),
                                                style: BS.tex14withFont500
                                                    .apply(
                                                        color: BC.avatarGrey),
                                                textAlign: TextAlign.center,
                                              ),
                                          ],
                                        );
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: Sizes.s25),
                                child: Column(
                                  children: [
                                    SizedBox(height: height / 40),
                                    CustomButton(
                                      s.startDeepSkin,
                                      onTap: () {
                                        _bloc.getProductDeep();
                                        _bloc.buyProductDeepScan(context);
                                        AnalyticsAmplitude()
                                            .logDeepScanningBuySubscription();
                                      },
                                      outLine: true,
                                      borderColor: BC.purpleViolet,
                                      colorButton: BC.purpleViolet,
                                      borderRadius: AppRadius.r18,
                                      padding: Sizes.s23,
                                      svgGenImage: Assets.images.starsIcon,
                                      spaceBetweenTextImage: Sizes.s8,
                                      textColor: BC.white,
                                      imageColor: BC.white,
                                    ),
                                    height > 840
                                        ? SizedBox(height: height / 30)
                                        : SizedBox(height: height / 35),
                                    DeepFooterText(
                                      textCheckMark: Platform.isIOS
                                          ? s.oneTimeSub
                                          : s.oneTimeSubPlayMarket,
                                      EUALA: s.euala,
                                      privacyPolicy: s.privacyPolicy,
                                      close: s.close,
                                      height: height,
                                      eulaAction: () {
                                        _bloc.showPrivacyPolicyAndTermOfUse();
                                        AnalyticsAmplitude()
                                            .logDeepScanningEULAFooter();
                                      },
                                      privacyPolicyAction: () {
                                        _bloc.showPrivacyPolicyAndTermOfUse();
                                        AnalyticsAmplitude()
                                            .logDeepScanningPrivacyPolicyFooter();
                                      },
                                      isActivateClose: false,
                                      padding: Sizes.s80,
                                    ),
                                    height > 840
                                        ? SizedBox(height: height / 25)
                                        : SizedBox(height: height / 55),
                                  ],
                                ),
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
