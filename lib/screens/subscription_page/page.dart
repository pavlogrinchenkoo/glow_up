import 'dart:io';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:glow_up/api/subscribe/dto.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/subscription_page/bloc.dart';
import 'package:glow_up/screens/subscription_page/widgets/footer_text.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/analytics_amplitude.dart';
import 'package:glow_up/utils/custom_stream_builder.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_boxeh.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:glow_up/widgets/custom_card_swiper.dart';
import 'package:glow_up/widgets/custom_circular_progress_indicator.dart';
import 'package:glow_up/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  final SubscriptionBloc _bloc = SubscriptionBloc();

  @override
  void initState() {
    _bloc.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final newHeight = height > 950
        ? Platform.isIOS
            ? width > 500
                ? height / 1.5
                : height / 1.6
            : height / 2.2
        : height > 840
            ? height / 2.2
            : height > 700
                ? Platform.isIOS
                    ? height / 1.8
                    : height / 2.05
                : height / 1.9;
    final S s = S.of(context);
    return CustomStreamBuilder(
      bloc: _bloc,
      builder: (context, ScreenState state) {
        return CustomScaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: BC.pink,
            ),
            child: state.showCircularProgress
                ? Center(child: AppCircularProgressIndicator(color: BC.white))
                : Stack(
                    children: [
                      CustomBokeh(
                        size: height / 1,
                        scaleY: 1,
                        scaleX: 0.5,
                        alignment: Alignment.center,
                        transform: Offset(Sizes.scale, height / 12),
                        shape: BoxShape.rectangle,
                        angleInRadians: pi / Sizes.s2,
                        blurWhiteHard: true,
                      ),
                      CustomBokeh(
                        size: height / 1,
                        scaleY: 1,
                        scaleX: 1,
                        alignment: Alignment.bottomCenter,
                        transform: Offset(Sizes.scale, height / 2.5),
                        shape: BoxShape.rectangle,
                        angleInRadians: pi / Sizes.s2,
                        blurWhiteHard: true,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          width > 500
                              ? SizedBox(height: height / Sizes.s15)
                              : height > 840
                                  ? SizedBox(height: height / Sizes.s10)
                                  : height > 670
                                      ? SizedBox(height: height / Sizes.s15)
                                      : SizedBox(height: height / Sizes.s25),
                          Text(
                            s.maximizeYourself,
                            style: BS.tex32Text.apply(color: BC.white),
                            textAlign: TextAlign.center,
                          ),
                          Space.h16,
                          Text(
                            s.uncoverAttractive,
                            style: BS.tex16WithFont400.apply(color: BC.white),
                            textAlign: TextAlign.center,
                          ),
                          Space.h20,
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: Sizes.s25),
                            child: Column(
                              children: [
                                CustomCardSwiper(
                                  height: newHeight,
                                  width: width,
                                  color: Colors.transparent,
                                  itemCard: 4,
                                  autoSwipe: true,
                                  itemBuilder: (_, index) {
                                    return Column(
                                      children: [
                                        Center(
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        AppRadius.r20),
                                                child: state.listSubscribeModel
                                                        .isNotEmpty
                                                    ? state
                                                        .listSubscribeModel[
                                                            index]
                                                        .subscribePhotoGroupEnum
                                                        .getImage()
                                                        .image(
                                                          fit: BoxFit.cover,
                                                        )
                                                    : SubscribePhotoGroupEnum
                                                        .first
                                                        .getImage()
                                                        .image(
                                                            fit:
                                                                BoxFit.cover))),
                                        height > 840
                                            ? SizedBox(
                                                height: newHeight / Sizes.s80)
                                            : const SizedBox.shrink(),
                                        Text(
                                            state.listSubscribeModel.isNotEmpty
                                                ? state
                                                    .listSubscribeModel[index]
                                                    .subscribeTextGroupEnum
                                                    .getTitle(s)
                                                : SubscribeTextGroupEnum.first
                                                    .getTitle(s),
                                            style: BS.tex24
                                                .apply(color: BC.purpleViolet)),
                                      ],
                                    );
                                  },
                                )
                              ],
                            ),
                          ),
                          if (height > 840) Space.h16,
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    height > 840 ? Sizes.s30 : Sizes.s25),
                            child: Text(
                              s.poweredAI,
                              style: BS.tex12Text.apply(color: BC.avatarGrey),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: Sizes.s25),
                            child: Column(
                              children: [
                                SizedBox(
                                    height: height > 950
                                        ? height / 60
                                        : height / 40),
                                CustomButton(
                                  s.unlockFillAccess,
                                  onTap: () {
                                    _bloc.getProduct();
                                    _bloc.buyProduct(context);
                                    AnalyticsAmplitude()
                                        .logBuyUnlockFullAccessSubscription();
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
                                height > 950
                                    ? SizedBox(height: height / 70)
                                    : height > 840
                                        ? SizedBox(height: height / 30)
                                        : SizedBox(height: height / 50),
                                FooterText(
                                  textCheckMark: Platform.isIOS
                                      ? s.securedWithITunes
                                      : s.securedWithPlayMarket,
                                  restore: s.restore,
                                  EUALA: s.euala,
                                  privacyPolicy: s.privacyPolicy,
                                  close: s.close,
                                  height: height,
                                  restorePurchase: () {
                                    _bloc.restorePurchase(context);
                                    AnalyticsAmplitude()
                                        .logRestoreFooterSubscription();
                                  },
                                  eulaAction: () {
                                    _bloc.showPrivacyPolicyAndTermOfUse();
                                    AnalyticsAmplitude()
                                        .logEULAFooterSubscription();
                                  },
                                  privacyPolicyAction: () {
                                    _bloc.showPrivacyPolicyAndTermOfUse();
                                    AnalyticsAmplitude()
                                        .logPrivacyPolicyFooterSubscription();
                                  },
                                  closeAction: () {
                                    _bloc.close(context);
                                    AnalyticsAmplitude()
                                        .logCloseFooterSubscription();
                                  },
                                ),
                                if (height > 840 &&
                                    height < 950 &&
                                    Platform.isAndroid)
                                  SizedBox(height: height / 100),
                                if (height > 840 &&
                                    height < 950 &&
                                    Platform.isIOS)
                                  SizedBox(height: height / 25),
                                if (height > 950 && width < 500)
                                  SizedBox(height: height / 40),
                                if (height > 700 && Platform.isAndroid)
                                  SizedBox(height: height / 45),
                                if (height < 670) SizedBox(height: height / 45),
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
