
import 'package:amplitude_flutter/amplitude.dart';

class AnalyticsAmplitude {
  final Amplitude analyticsAmplitude = Amplitude.getInstance();

  void initializeAnalytics() {
    try {
      analyticsAmplitude.init("ef2d2889511f42334dc0080662dd89d6");
    } catch (e) {
      print("Amplitude Error: $e");
    }
  }

  void logGetStarted() async {
    const e = "welcome_get_started";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedPrivacyPolicy() async {
    const e = "welcome_privacy_policy";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedContinue() async {
    const e = "get_started_continue";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedLeaveReview() async {
    const e = "get_started_leave_review";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedAllowNotification() async {
    const e = "get_started_allow_notification";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedTakeFrontSelfie() async {
    const e = "get_started_take_front_selfie";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedUploadFrontSelfie() async {
    const e = "get_started_upload_front_selfie";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedProceedTakeFrontSelfie() async {
    const e = "get_started_proceed_take_front_selfie";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedFronSelfieRetake() async {
    const e = "get_started_fron_selfie_retake";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedPreviewFrontSelfieContinue() async {
    const e = "get_started_preview_front_selfie_continue";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedTakeSideSelfie() async {
    const e = "get_started_take_side_selfie";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedUploadSideSelfie() async {
    const e = "get_started_upload_side_selfie";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedProceedTakeSideSelfie() async {
    const e = "get_started_proceed_take_side_selfie";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedSideSelfieRetake() async {
    const e = "get_started_side_selfie_retake";
    analyticsAmplitude.logEvent(e);
  }

  void logGetStartedPreviewSideSelfieContinue() async {
    const e = "get_started_preview_side_selfie_continue";
    analyticsAmplitude.logEvent(e);
  }

  void logOnboardingFullFinish() async {
    const e = "onboarding_full_finish";
    analyticsAmplitude.logEvent(e);
  }

  void logRevealYourResults() async {
    const e = "reveal_your_results";
    analyticsAmplitude.logEvent(e);
  }

  void logInviteYourFriend() async {
    const e = "invite_your_friend";
    analyticsAmplitude.logEvent(e);
  }

  void logCopyYourCode() async {
    const e = "copy_your_code";
    analyticsAmplitude.logEvent(e);
  }

  void logInviteFriendRedeem() async {
    const e = "invite_friend_redeem";
    analyticsAmplitude.logEvent(e);
  }

  void logGotAnInviteCode() async {
    const e = "got_an_invite_code";
    analyticsAmplitude.logEvent(e);
  }

  void logWriteAnInviteCode() async {
    const e = "write_an_invite_code";
    analyticsAmplitude.logEvent(e);
  }

  void logWriteAnotherInviteCode() async {
    const e = "write_another_invite_code";
    analyticsAmplitude.logEvent(e);
  }

  void logBuyUnlockFullAccessSubscription() async {
    const e = "buy_unlock_full_access_subscription";
    analyticsAmplitude.logEvent(e);
  }

  void logRestoreFooterSubscription() async {
    const e = "restore_footer_subscription";
    analyticsAmplitude.logEvent(e);
  }

  void logEULAFooterSubscription() async {
    const e = "eula_footer_subscription";
    analyticsAmplitude.logEvent(e);
  }

  void logPrivacyPolicyFooterSubscription() async {
    const e = "privacy_policy_footer_subscription";
    analyticsAmplitude.logEvent(e);
  }

  void logCloseFooterSubscription() async {
    const e = "close_footer_subscription";
    analyticsAmplitude.logEvent(e);
  }

  void logResultsRetakePhotoIfLimitAllows() async {
    const e = "results_retake_photo_if_limit_allows";
    analyticsAmplitude.logEvent(e);
  }

  void logResultsGoToMenu() async {
    const e = "results_go_to_menu";
    analyticsAmplitude.logEvent(e);
  }

  void logResultsMakeADeepScanning() async {
    const e = "results_make_a_deep_scanning";
    analyticsAmplitude.logEvent(e);
  }

  void logResultsShareWithFriend() async {
    const e = "results_share_with_friend";
    analyticsAmplitude.logEvent(e);
  }

  void logDeepScanningBuySubscription() async {
    const e = "deep_scanning_buy_subscription";
    analyticsAmplitude.logEvent(e);
  }

  void logDeepScanningRestoreFooter() async {
    const e = "deep_scanning_restore_footer";
    analyticsAmplitude.logEvent(e);
  }

  void logDeepScanningEULAFooter() async {
    const e = "deep_scanning_eula_footer";
    analyticsAmplitude.logEvent(e);
  }

  void logDeepScanningPrivacyPolicyFooter() async {
    const e = "deep_scanning_privacy_policy_footer";
    analyticsAmplitude.logEvent(e);
  }

  void logDeepScanningClose() async {
    const e = "deep_scanning_close";
    analyticsAmplitude.logEvent(e);
  }

  void logDeepScanningResultsBack() async {
    const e = "deep_scanning_results_back";
    analyticsAmplitude.logEvent(e);
  }

  void logDeepScanningResultsMenu() async {
    const e = "deep_scanning_results_menu";
    analyticsAmplitude.logEvent(e);
  }

  void logMenuYourAnalyticsHistory() async {
    const e = "menu_your_analytics_history";
    analyticsAmplitude.logEvent(e);
  }

  void logMenuInviteCodeRedeem() async {
    const e = "menu_invite_code_redeem";
    analyticsAmplitude.logEvent(e);
  }

  void logMenuLooksMaxGuide() async {
    const e = "menu_looks_max_guide";
    analyticsAmplitude.logEvent(e);
  }

  void logMenuRateUs() async {
    const e = "menu_rate_us";
    analyticsAmplitude.logEvent(e);
  }

  void logMenuShareWithFriend() async {
    const e = "menu_share_with_friend";
    analyticsAmplitude.logEvent(e);
  }

  void logMenuContactSupport() async {
    const e = "menu_contact_support";
    analyticsAmplitude.logEvent(e);
  }

  void logMenuPrivacyPolicy() async {
    const e = "menu_privacy_policy";
    analyticsAmplitude.logEvent(e);
  }

  void logMenuOpenTiktok() async {
    const e = "menu_open_tiktok";
    analyticsAmplitude.logEvent(e);
  }

  void logMenuOpenInstagram() async {
    const e = "menu_open_instagram";
    analyticsAmplitude.logEvent(e);
  }

  void logMenuBack() async {
    const e = "menu_back";
    analyticsAmplitude.logEvent(e);
  }

  void logHistoryGoToMenu() async {
    const e = "history_go_to_menu";
    analyticsAmplitude.logEvent(e);
  }

  void logHistoryMakeNewScan() async {
    const e = "history_make_new_scan";
    analyticsAmplitude.logEvent(e);
  }
}
