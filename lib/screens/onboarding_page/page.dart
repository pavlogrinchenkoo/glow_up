import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/onboarding_page/bloc.dart';
import 'package:glow_up/screens/onboarding_page/widgets/onboarding_finish_indicator.dart';
import 'package:glow_up/screens/onboarding_page/widgets/onboarding_start_use_photo.dart';
import 'package:glow_up/screens/onboarding_page/widgets/onboarding_shape_future.dart';
import 'package:glow_up/screens/onboarding_page/widgets/onboarding_enable_notifications.dart';
import 'package:glow_up/screens/onboarding_page/widgets/onboarding_photo_preview.dart';
import 'package:glow_up/screens/onboarding_page/widgets/onboarding_before_or_after.dart';
import 'package:glow_up/screens/onboarding_page/widgets/onboarding_take_photo.dart';
import 'package:glow_up/screens/onboarding_page/widgets/onboarding_rate_app.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/analytics_amplitude.dart';
import 'package:glow_up/utils/custom_stream_builder.dart';
import 'package:glow_up/widgets/custom_scaffold.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  final bool isUseFirstOnboarding;

  const OnboardingPage({
    super.key,
    this.isUseFirstOnboarding = false,
  });

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final OnboardingBloc bloc = OnboardingBloc();
  late PageController pageController;

  @override
  void initState() {
    pageController =
        PageController(initialPage: widget.isUseFirstOnboarding ? 4 : 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    S s = S.of(context);
    return CustomStreamBuilder<ScreenState>(
        bloc: bloc,
        builder: (BuildContext context, state) {
          return CustomScaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: BC.navyGrey,
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: pageController,
                      children: [
                        OnboardingShapeFuture(
                          nextPage: () {
                            bloc.nextPage(context, pageController);
                            AnalyticsAmplitude().logGetStarted();
                          },
                          openPrivacyPolicy: () {
                            bloc.showPrivacyPolicyAndTermOfUse();
                            AnalyticsAmplitude().logGetStarted();
                          },
                          s: s,
                        ),
                        OnboardingBeforeOrAfter(
                          nextPage: () {
                            bloc.nextPage(context, pageController);
                            AnalyticsAmplitude().logGetStartedContinue();
                          },
                          s: s,
                        ),
                        OnboardingRateApp(
                          nextPage: () {
                            bloc.nextPage(context, pageController);
                            AnalyticsAmplitude().logGetStartedLeaveReview();
                          },
                          s: s,
                        ),
                        OnboardingEnableNotifications(
                          nextPage: () {
                            bloc.nextPage(context, pageController);
                            AnalyticsAmplitude()
                                .logGetStartedAllowNotification();
                          },
                          s: s,
                        ),
                        OnboardingStartUsePhoto(
                          pushToTakePhoto: () {
                            bloc.nextPage(context, pageController);
                            AnalyticsAmplitude().logGetStartedTakeFrontSelfie();
                          },
                          uploadGalleryPhoto: () {
                            bloc.getGalleryPhoto(context, pageController, true);
                            AnalyticsAmplitude()
                                .logGetStartedUploadFrontSelfie();
                          },
                          frontSelfie: true,
                          s: s,
                        ),
                        OnboardingTakePhoto(
                          s: s,
                          bloc: bloc,
                          nextPage: () {
                            bloc.nextPage(context, pageController);
                            AnalyticsAmplitude()
                                .logGetStartedProceedTakeFrontSelfie();
                          },
                          initializeControllerFuture:
                              state.initializeControllerFuture,
                          cameraController: state.cameraController,
                          capturedImage: XFile(state.frontIconPath ?? ""),
                          frontSelfie: true,
                          pageController: pageController,
                          contextStartPhoto: context,
                        ),
                        OnboardingPhotoPreview(
                          backAgainTakePhoto: () {
                            bloc.cleanIconPath(isFrontIcon: true);
                            bloc.nextPage(
                              context,
                              pageController,
                              back: true,
                            );
                            AnalyticsAmplitude()
                                .logGetStartedFronSelfieRetake();
                          },
                          createNextPhoto: () {
                            bloc.nextPage(context, pageController);
                            AnalyticsAmplitude()
                                .logGetStartedPreviewFrontSelfieContinue();
                          },
                          frontIconPath: state.frontIconPath,
                          s: s,
                          frontSelfie: true,
                          showCircularIndicator: state.showCircularIndicator,
                        ),
                        OnboardingStartUsePhoto(
                          pushToTakePhoto: () {
                            bloc.nextPage(context, pageController);
                            AnalyticsAmplitude().logGetStartedTakeSideSelfie();
                          },
                          uploadGalleryPhoto: () {
                            bloc.getGalleryPhoto(
                                context, pageController, false);
                            AnalyticsAmplitude()
                                .logGetStartedUploadSideSelfie();
                          },
                          frontSelfie: false,
                          s: s,
                        ),
                        OnboardingTakePhoto(
                          s: s,
                          bloc: bloc,
                          nextPage: () {
                            bloc.nextPage(context, pageController);
                            AnalyticsAmplitude()
                                .logGetStartedProceedTakeSideSelfie();
                          },
                          initializeControllerFuture:
                              state.initializeControllerFuture,
                          cameraController: state.cameraController,
                          capturedImage: state.sideIcon,
                          frontSelfie: false,
                          pageController: pageController,
                          contextStartPhoto: context,
                        ),
                        OnboardingPhotoPreview(
                          backAgainTakePhoto: () {
                            bloc.cleanIconPath(isFrontIcon: false);
                            bloc.nextPage(context, pageController, back: true);
                            AnalyticsAmplitude()
                                .logGetStartedSideSelfieRetake();
                          },
                          createNextPhoto: () {
                            bloc.nextPage(context, pageController);
                            AnalyticsAmplitude()
                                .logGetStartedPreviewSideSelfieContinue();
                          },
                          frontIconPath: state.sideIcon?.path ?? "",
                          s: s,
                          frontSelfie: false,
                          showCircularIndicator: state.showCircularIndicator,
                        ),
                        OnboardingFinishIndicator(
                          valueProgress: state.valueProgress,
                          isLastText: state.isLastText,
                          loadDataInfoStatus: state.loadDataInfoStatus,
                          bloc: bloc,
                          s: s,
                          context: context,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            activateFullSafeArea: false,
            safeAreaBottom: false,
          );
        });
  }
}
