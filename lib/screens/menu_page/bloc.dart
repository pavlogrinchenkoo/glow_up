import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:glow_up/routers/routes.dart';
import 'package:glow_up/utils/analytics_amplitude.dart';
import 'package:glow_up/utils/session.dart';
import 'package:glow_up/utils/bloc_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  MenuBloc() {
    setState(ScreenState());
  }

  final storage = GetStorage();
  final session = Session();

  void init(BuildContext context) async {
    getButtonsMenu(context);
  }

  void getButtonsMenu(BuildContext context) {
    final List<Map<String, dynamic>> buttonsData = [
      {
        'text': (s) => s.yourAnalysisHistory,
        'action': () {
          context.router.push(const HistoryRoute());
          AnalyticsAmplitude().logMenuYourAnalyticsHistory();
        },
      },
      {
        'text': (s) => s.inviteCodeRedeem,
        'action': () {
          toResultWithSheet(context);
          AnalyticsAmplitude().logMenuInviteCodeRedeem();
        },
      },
      {
        'text': (s) => s.glowUpGuides,
        'action': () {
          context.router.push(const GuideRoute());
          AnalyticsAmplitude().logMenuLooksMaxGuide();
        },
      },
      {
        'text': (s) => s.rateUs,
        'action': () {
          showRateApp();
          AnalyticsAmplitude().logMenuRateUs();
        },
      },
      {
        'text': (s) => s.shareWithFriends,
        'action': () async {
          await sharingText();
          AnalyticsAmplitude().logMenuShareWithFriend();
        },
      },
      {
        'text': (s) => s.contactSupport,
        'action': () {
          writeContactSupportEmail();
          AnalyticsAmplitude().logMenuContactSupport();
        },
      },
      {
        'text': (s) => s.privacyPolicyAndTermsOfUse,
        'action': () {
          showPrivacyPolicyAndTermOfUse();
          AnalyticsAmplitude().logMenuPrivacyPolicy();
        },
      },
    ];
    setState(currentState.copyWith(buttonsMenu: buttonsData));
  }

  void toResult(BuildContext context) {
    context.router.maybePop<bool>(false);
  }

  void toResultWithSheet(BuildContext context) {
    context.router.maybePop<bool>(true);
  }
  Future<void> openInstagram() async {
    const nativeUrl = "instagram://user?username=glow_up_app";
    const webUrl = "https://www.instagram.com/glow_up_app/";
    if (await canLaunchUrl(Uri.parse(nativeUrl))) {
      await launchUrl(Uri.parse(nativeUrl));
      setState(currentState.copyWith(isInstagramShow: true));
    } else if (await canLaunchUrl(Uri.parse(webUrl))) {
      await launchUrl(Uri.parse(webUrl));
      setState(currentState.copyWith(isInstagramShow: true));
    } else {
      log("Can't open instagram");
    }
  }

  Future<void> openTikTok() async {
    const nativeUrlAndroid =
        "intent://user/@glow_up_app#Intent;scheme=https;package=com.zhiliaoapp.musically;end";
    const nativeUrlIOS = "snssdk1233://user/@glow_up_app";
    const webUrl = "https://www.tiktok.com/@glow_up_app";
    bool launched = false;
    if (await canLaunchUrl(
        Uri.parse(Platform.isAndroid ? nativeUrlAndroid : nativeUrlIOS))) {
      await launchUrl(
          Uri.parse(Platform.isAndroid ? nativeUrlAndroid : nativeUrlIOS));
      launched = true;
    }

    if (!launched && await canLaunchUrl(Uri.parse(webUrl))) {
      await launchUrl(Uri.parse(webUrl));
      launched = true;
    }
    if (launched) {
      setState(currentState.copyWith(isTikTokShow: true));
    } else {
      log("Can't open TikTok");
    }
  }

  void showRateApp() async {
    final InAppReview inAppReview = InAppReview.instance;
    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    }
  }

  void showPrivacyPolicyAndTermOfUse() async {
    const url = 'https://www.moontalk.app/privacy';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw "Could not launch $url";
    }
  }

  void writeContactSupportEmail() async {
    Uri uri = Uri.parse(
      'mailto:contact@brainenergy.app?subject=Dear Support&body=I want to tell you about...',
    );
    if (!await launchUrl(uri)) {
      debugPrint(
        "Could not launch the uri because the simulator doesn't have the email app",
      );
    }
  }

  Future<void> sharingText() async {
    try {
      const androidLink =
          "https://play.google.com/store/apps/details?id=com.looksmax.io";
      const iosLink = "https://apps.apple.com/us/app/looksmax-looksmaxxing-guide/id6477722230";
      final shareText =
          "Are you a 10/10? Check your rating quickly with GlowUp!\n\n"
          "${Platform.isIOS ? iosLink : androidLink}";
      await Share.share(shareText);
    } catch (e) {
      throw Exception("Error sharing image: $e");
    }
  }
}

class ScreenState {
  final bool loading;
  final List<Map<String, dynamic>>? buttonsMenu;
  final bool isInstagramShow;
  final bool isTikTokShow;

  ScreenState({
    this.loading = false,
    this.buttonsMenu = const [],
    this.isInstagramShow = false,
    this.isTikTokShow = false,
  });

  ScreenState copyWith({
    bool? loading,
    List<Map<String, dynamic>>? buttonsMenu,
    bool? isInstagramShow,
    bool? isTikTokShow,
  }) {
    return ScreenState(
      loading: loading ?? this.loading,
      buttonsMenu: buttonsMenu ?? this.buttonsMenu,
      isInstagramShow: isInstagramShow ?? this.isInstagramShow,
      isTikTokShow: isTikTokShow ?? this.isTikTokShow,
    );
  }
}
