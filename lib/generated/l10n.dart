// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `LOGO`
  String get logo {
    return Intl.message(
      'LOGO',
      name: 'logo',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Shape Your Future`
  String get onboardingShapeTitleText {
    return Intl.message(
      'Shape Your Future',
      name: 'onboardingShapeTitleText',
      desc: '',
      args: [],
    );
  }

  /// `Craft the appearance you've always desired. Begin your transformational journey today.`
  String get onboardingShapeText {
    return Intl.message(
      'Craft the appearance you\'ve always desired. Begin your transformational journey today.',
      name: 'onboardingShapeText',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onboardingGetButtonText {
    return Intl.message(
      'Get Started',
      name: 'onboardingGetButtonText',
      desc: '',
      args: [],
    );
  }

  /// `By continuing you accept our`
  String get onboardingTermFooterTitleText {
    return Intl.message(
      'By continuing you accept our',
      name: 'onboardingTermFooterTitleText',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Privacy`
  String get onboardingTermFooterText {
    return Intl.message(
      'Terms and Privacy',
      name: 'onboardingTermFooterText',
      desc: '',
      args: [],
    );
  }

  /// `Before & After: Your Journey`
  String get onboardingBeforeAfterTitleText {
    return Intl.message(
      'Before & After: Your Journey',
      name: 'onboardingBeforeAfterTitleText',
      desc: '',
      args: [],
    );
  }

  /// `Uncover the potential within. Track your progress and witness the remarkable transformation.`
  String get onboardingBeforeAfterText {
    return Intl.message(
      'Uncover the potential within. Track your progress and witness the remarkable transformation.',
      name: 'onboardingBeforeAfterText',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get onboardingContinueButtonText {
    return Intl.message(
      'Continue',
      name: 'onboardingContinueButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Retake`
  String get onboardingRetakeButtonText {
    return Intl.message(
      'Retake',
      name: 'onboardingRetakeButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Your Review, Our Strength`
  String get onboardingReviewTitleText {
    return Intl.message(
      'Your Review, Our Strength',
      name: 'onboardingReviewTitleText',
      desc: '',
      args: [],
    );
  }

  /// `Leave a review and help us empower more men. Together, we rise.`
  String get onboardingReviewText {
    return Intl.message(
      'Leave a review and help us empower more men. Together, we rise.',
      name: 'onboardingReviewText',
      desc: '',
      args: [],
    );
  }

  /// `Leave a review`
  String get onboardingReviewButtonText {
    return Intl.message(
      'Leave a review',
      name: 'onboardingReviewButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Stay Connected, Stay Informed`
  String get onboardingNotificationTitleText {
    return Intl.message(
      'Stay Connected, Stay Informed',
      name: 'onboardingNotificationTitleText',
      desc: '',
      args: [],
    );
  }

  /// `Enable notifications to receive tips and personalized insights. Never miss a beat on your journey to excellence.`
  String get onboardingNotificationText {
    return Intl.message(
      'Enable notifications to receive tips and personalized insights. Never miss a beat on your journey to excellence.',
      name: 'onboardingNotificationText',
      desc: '',
      args: [],
    );
  }

  /// `Allow`
  String get onboardingNotificationButtonText {
    return Intl.message(
      'Allow',
      name: 'onboardingNotificationButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Take a Front Selfie`
  String get onboardingHeaderTakeFrontSelfie {
    return Intl.message(
      'Take a Front Selfie',
      name: 'onboardingHeaderTakeFrontSelfie',
      desc: '',
      args: [],
    );
  }

  /// `Take a Side Selfie`
  String get onboardingHeaderTakeSideSelfie {
    return Intl.message(
      'Take a Side Selfie',
      name: 'onboardingHeaderTakeSideSelfie',
      desc: '',
      args: [],
    );
  }

  /// `Upload a high-quality image for the best results.`
  String get onboardingUploadHighQuality {
    return Intl.message(
      'Upload a high-quality image for the best results.',
      name: 'onboardingUploadHighQuality',
      desc: '',
      args: [],
    );
  }

  /// `Confirm a Front Selfie`
  String get onboardingConfirmFrontSelfie {
    return Intl.message(
      'Confirm a Front Selfie',
      name: 'onboardingConfirmFrontSelfie',
      desc: '',
      args: [],
    );
  }

  /// `Confirm a Side Selfie`
  String get onboardingConfirmSideSelfie {
    return Intl.message(
      'Confirm a Side Selfie',
      name: 'onboardingConfirmSideSelfie',
      desc: '',
      args: [],
    );
  }

  /// `Take a Front Selfie`
  String get onboardingTakeFrontSelfie {
    return Intl.message(
      'Take a Front Selfie',
      name: 'onboardingTakeFrontSelfie',
      desc: '',
      args: [],
    );
  }

  /// `Take a Side Selfie`
  String get onboardingTakeSideSelfie {
    return Intl.message(
      'Take a Side Selfie',
      name: 'onboardingTakeSideSelfie',
      desc: '',
      args: [],
    );
  }

  /// `Take a selfie`
  String get onboardingButtonTakeSelfieButton {
    return Intl.message(
      'Take a selfie',
      name: 'onboardingButtonTakeSelfieButton',
      desc: '',
      args: [],
    );
  }

  /// `Upload from Library`
  String get onboardingButtonUploadLibraryButton {
    return Intl.message(
      'Upload from Library',
      name: 'onboardingButtonUploadLibraryButton',
      desc: '',
      args: [],
    );
  }

  /// `Please upload a better quality image. Try a new one.`
  String get showDialogChangeIcon {
    return Intl.message(
      'Please upload a better quality image. Try a new one.',
      name: 'showDialogChangeIcon',
      desc: '',
      args: [],
    );
  }

  /// `Please enable access to your camera or photo library.`
  String get showDialogAccessPermissionCameraOrPhoto {
    return Intl.message(
      'Please enable access to your camera or photo library.',
      name: 'showDialogAccessPermissionCameraOrPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Facial Geometry Mapping`
  String get facialGeometry {
    return Intl.message(
      'Facial Geometry Mapping',
      name: 'facialGeometry',
      desc: '',
      args: [],
    );
  }

  /// `Skin Texture AI Scan`
  String get skinTexture {
    return Intl.message(
      'Skin Texture AI Scan',
      name: 'skinTexture',
      desc: '',
      args: [],
    );
  }

  /// `Symmetry Detection`
  String get symmetryDetection {
    return Intl.message(
      'Symmetry Detection',
      name: 'symmetryDetection',
      desc: '',
      args: [],
    );
  }

  /// `Skin Health AI Check`
  String get skinHealth {
    return Intl.message(
      'Skin Health AI Check',
      name: 'skinHealth',
      desc: '',
      args: [],
    );
  }

  /// `Aging Marker Detection`
  String get agingMarker {
    return Intl.message(
      'Aging Marker Detection',
      name: 'agingMarker',
      desc: '',
      args: [],
    );
  }

  /// `Jawline & Cheekbone Assessment`
  String get jawlineCheekbone {
    return Intl.message(
      'Jawline & Cheekbone Assessment',
      name: 'jawlineCheekbone',
      desc: '',
      args: [],
    );
  }

  /// `Attractiveness Index Calculation`
  String get attractivenessIndex {
    return Intl.message(
      'Attractiveness Index Calculation',
      name: 'attractivenessIndex',
      desc: '',
      args: [],
    );
  }

  /// `Beauty Profile Compilation`
  String get beautyProfile {
    return Intl.message(
      'Beauty Profile Compilation',
      name: 'beautyProfile',
      desc: '',
      args: [],
    );
  }

  /// `Analyzing your info...`
  String get analyzingInfo {
    return Intl.message(
      'Analyzing your info...',
      name: 'analyzingInfo',
      desc: '',
      args: [],
    );
  }

  /// `✅ Scan is Completed`
  String get scanCompleted {
    return Intl.message(
      '✅ Scan is Completed',
      name: 'scanCompleted',
      desc: '',
      args: [],
    );
  }

  /// `📈 Your Personal Rating`
  String get personalRating {
    return Intl.message(
      '📈 Your Personal Rating',
      name: 'personalRating',
      desc: '',
      args: [],
    );
  }

  /// `💆‍ Facial & Skin Insights`
  String get facialSkin {
    return Intl.message(
      '💆‍ Facial & Skin Insights',
      name: 'facialSkin',
      desc: '',
      args: [],
    );
  }

  /// `📚 Improvement Guide`
  String get improvementGuide {
    return Intl.message(
      '📚 Improvement Guide',
      name: 'improvementGuide',
      desc: '',
      args: [],
    );
  }

  /// `🔎 AI-Driven Deep Analysis`
  String get aiDriven {
    return Intl.message(
      '🔎 AI-Driven Deep Analysis',
      name: 'aiDriven',
      desc: '',
      args: [],
    );
  }

  /// `Secured with iTunes`
  String get securedWithITunes {
    return Intl.message(
      'Secured with iTunes',
      name: 'securedWithITunes',
      desc: '',
      args: [],
    );
  }

  /// `Secured with Google Play`
  String get securedWithPlayMarket {
    return Intl.message(
      'Secured with Google Play',
      name: 'securedWithPlayMarket',
      desc: '',
      args: [],
    );
  }

  /// `Restore`
  String get restore {
    return Intl.message(
      'Restore',
      name: 'restore',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `EULA`
  String get euala {
    return Intl.message(
      'EULA',
      name: 'euala',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Maximize Yourself`
  String get maximizeYourself {
    return Intl.message(
      'Maximize Yourself',
      name: 'maximizeYourself',
      desc: '',
      args: [],
    );
  }

  /// `Uncover the most attractive version of yourself.`
  String get uncoverAttractive {
    return Intl.message(
      'Uncover the most attractive version of yourself.',
      name: 'uncoverAttractive',
      desc: '',
      args: [],
    );
  }

  /// `Powered by advanced AI, we charge just 4.99 US $ per week for premium insights. Thank you for your support!`
  String get poweredAI {
    return Intl.message(
      'Powered by advanced AI, we charge just 4.99 US \$ per week for premium insights. Thank you for your support!',
      name: 'poweredAI',
      desc: '',
      args: [],
    );
  }

  /// `Unlock Full Access`
  String get unlockFillAccess {
    return Intl.message(
      'Unlock Full Access',
      name: 'unlockFillAccess',
      desc: '',
      args: [],
    );
  }

  /// `Got an invite code?`
  String get gotInviteCode {
    return Intl.message(
      'Got an invite code?',
      name: 'gotInviteCode',
      desc: '',
      args: [],
    );
  }

  /// `Invite 3 Friends`
  String get inviteFriends {
    return Intl.message(
      'Invite 3 Friends',
      name: 'inviteFriends',
      desc: '',
      args: [],
    );
  }

  /// `You can activate someone's code below`
  String get youCanActivate {
    return Intl.message(
      'You can activate someone`s code below',
      name: 'youCanActivate',
      desc: '',
      args: [],
    );
  }

  /// `Use your code to invite 3 friends and reveal your results for free.`
  String get useYourCode {
    return Intl.message(
      'Use your code to invite 3 friends and reveal your results for free.',
      name: 'useYourCode',
      desc: '',
      args: [],
    );
  }

  /// `+ Earn $5`
  String get earn {
    return Intl.message(
      '+ Earn \$5',
      name: 'earn',
      desc: '',
      args: [],
    );
  }

  /// `when then pay`
  String get whenThenPay {
    return Intl.message(
      'when then pay',
      name: 'whenThenPay',
      desc: '',
      args: [],
    );
  }

  /// `TAP TO ENTER`
  String get tapToEnter {
    return Intl.message(
      'TAP TO ENTER',
      name: 'tapToEnter',
      desc: '',
      args: [],
    );
  }

  /// `This code doesn't exit`
  String get thisCodeExit {
    return Intl.message(
      'This code doesn`t exit',
      name: 'thisCodeExit',
      desc: '',
      args: [],
    );
  }

  /// `Try another code`
  String get tryAnotherCode {
    return Intl.message(
      'Try another code',
      name: 'tryAnotherCode',
      desc: '',
      args: [],
    );
  }

  /// `Activate`
  String get activate {
    return Intl.message(
      'Activate',
      name: 'activate',
      desc: '',
      args: [],
    );
  }

  /// `Activated`
  String get activated {
    return Intl.message(
      'Activated',
      name: 'activated',
      desc: '',
      args: [],
    );
  }

  /// `Copied`
  String get copied {
    return Intl.message(
      'Copied',
      name: 'copied',
      desc: '',
      args: [],
    );
  }

  /// `Copy your code`
  String get copyYourCode {
    return Intl.message(
      'Copy your code',
      name: 'copyYourCode',
      desc: '',
      args: [],
    );
  }

  /// `Redeem`
  String get redeem {
    return Intl.message(
      'Redeem',
      name: 'redeem',
      desc: '',
      args: [],
    );
  }

  /// `⏰`
  String get mainClockImage {
    return Intl.message(
      '⏰',
      name: 'mainClockImage',
      desc: '',
      args: [],
    );
  }

  /// `👩🏼`
  String get mainGirlImage {
    return Intl.message(
      '👩🏼',
      name: 'mainGirlImage',
      desc: '',
      args: [],
    );
  }

  /// `👨🏻`
  String get mainManImage {
    return Intl.message(
      '👨🏻',
      name: 'mainManImage',
      desc: '',
      args: [],
    );
  }

  /// `🌷`
  String get mainFlowersImage {
    return Intl.message(
      '🌷',
      name: 'mainFlowersImage',
      desc: '',
      args: [],
    );
  }

  /// `💪`
  String get mainStrongImage {
    return Intl.message(
      '💪',
      name: 'mainStrongImage',
      desc: '',
      args: [],
    );
  }

  /// `🧬`
  String get faceEmotionImage {
    return Intl.message(
      '🧬',
      name: 'faceEmotionImage',
      desc: '',
      args: [],
    );
  }

  /// `😎`
  String get faceCoolImage {
    return Intl.message(
      '😎',
      name: 'faceCoolImage',
      desc: '',
      args: [],
    );
  }

  /// `🪞`
  String get faceSymmetryImage {
    return Intl.message(
      '🪞',
      name: 'faceSymmetryImage',
      desc: '',
      args: [],
    );
  }

  /// `💫`
  String get faceSymmetryImageAndroid {
    return Intl.message(
      '💫',
      name: 'faceSymmetryImageAndroid',
      desc: '',
      args: [],
    );
  }

  /// `👃`
  String get faceNoseImage {
    return Intl.message(
      '👃',
      name: 'faceNoseImage',
      desc: '',
      args: [],
    );
  }

  /// `🧏‍♂️`
  String get faceJawlineImage {
    return Intl.message(
      '🧏‍♂️',
      name: 'faceJawlineImage',
      desc: '',
      args: [],
    );
  }

  /// `🤠`
  String get faceJawlineImageAndroid {
    return Intl.message(
      '🤠',
      name: 'faceJawlineImageAndroid',
      desc: '',
      args: [],
    );
  }

  /// `Your Results`
  String get titleResults {
    return Intl.message(
      'Your Results',
      name: 'titleResults',
      desc: '',
      args: [],
    );
  }

  /// `Make a deep scanning of myself`
  String get makeDeepScanButton {
    return Intl.message(
      'Make a deep scanning of myself',
      name: 'makeDeepScanButton',
      desc: '',
      args: [],
    );
  }

  /// `Share with friends & Compare`
  String get shareFriendButton {
    return Intl.message(
      'Share with friends & Compare',
      name: 'shareFriendButton',
      desc: '',
      args: [],
    );
  }

  /// `👨 Improve Your Face`
  String get improveYourFaceButton {
    return Intl.message(
      '👨 Improve Your Face',
      name: 'improveYourFaceButton',
      desc: '',
      args: [],
    );
  }

  /// `🧴 Improve Your Skin`
  String get improveYourSkinButton {
    return Intl.message(
      '🧴 Improve Your Skin',
      name: 'improveYourSkinButton',
      desc: '',
      args: [],
    );
  }

  /// `✂️ Improve Your Hair`
  String get improveYourHairButton {
    return Intl.message(
      '✂️ Improve Your Hair',
      name: 'improveYourHairButton',
      desc: '',
      args: [],
    );
  }

  /// `🧏‍️️ Improve Your Jawline`
  String get improveYourJawlineButton {
    return Intl.message(
      '🧏‍️️ Improve Your Jawline',
      name: 'improveYourJawlineButton',
      desc: '',
      args: [],
    );
  }

  /// `👀 Improve Your Eyes`
  String get improveYourEyesButton {
    return Intl.message(
      '👀 Improve Your Eyes',
      name: 'improveYourEyesButton',
      desc: '',
      args: [],
    );
  }

  /// `💪 Improve Your Fitness`
  String get improveYourFitnessButton {
    return Intl.message(
      '💪 Improve Your Fitness',
      name: 'improveYourFitnessButton',
      desc: '',
      args: [],
    );
  }

  /// `👕 Improve Your Fashion`
  String get improveYourFashionButton {
    return Intl.message(
      '👕 Improve Your Fashion',
      name: 'improveYourFashionButton',
      desc: '',
      args: [],
    );
  }

  /// `🧔‍ Improve Your Grooming`
  String get improveYourGroomingButton {
    return Intl.message(
      '🧔‍ Improve Your Grooming',
      name: 'improveYourGroomingButton',
      desc: '',
      args: [],
    );
  }

  /// `Reveal Your Results`
  String get revealResults {
    return Intl.message(
      'Reveal Your Results',
      name: 'revealResults',
      desc: '',
      args: [],
    );
  }

  /// `Invite 3 Friends & Earn`
  String get inviteFriendsEarn {
    return Intl.message(
      'Invite 3 Friends & Earn',
      name: 'inviteFriendsEarn',
      desc: '',
      args: [],
    );
  }

  /// `Upload Limit: 1 image per week. \nPlease try again in 7 days.`
  String get uploadLimitDialog {
    return Intl.message(
      'Upload Limit: 1 image per week. \nPlease try again in 7 days.',
      name: 'uploadLimitDialog',
      desc: '',
      args: [],
    );
  }

  /// `Go to Settings`
  String get goToSettings {
    return Intl.message(
      'Go to Settings',
      name: 'goToSettings',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `👤 Your Analysis History`
  String get yourAnalysisHistory {
    return Intl.message(
      '👤 Your Analysis History',
      name: 'yourAnalysisHistory',
      desc: '',
      args: [],
    );
  }

  /// `🎟 Invite Code & Redeem`
  String get inviteCodeRedeem {
    return Intl.message(
      '🎟 Invite Code & Redeem',
      name: 'inviteCodeRedeem',
      desc: '',
      args: [],
    );
  }

  /// `📚 LooksMax Guides`
  String get looksMaxGuides {
    return Intl.message(
      '📚 LooksMax Guides',
      name: 'looksMaxGuides',
      desc: '',
      args: [],
    );
  }

  /// `⭐️ Rate Us`
  String get rateUs {
    return Intl.message(
      '⭐️ Rate Us',
      name: 'rateUs',
      desc: '',
      args: [],
    );
  }

  /// `🫡 Share with Friends`
  String get shareWithFriends {
    return Intl.message(
      '🫡 Share with Friends',
      name: 'shareWithFriends',
      desc: '',
      args: [],
    );
  }

  /// `✉️ Contact Support`
  String get contactSupport {
    return Intl.message(
      '✉️ Contact Support',
      name: 'contactSupport',
      desc: '',
      args: [],
    );
  }

  /// `🔒 Privacy Policy & Terms of Use`
  String get privacyPolicyAndTermsOfUse {
    return Intl.message(
      '🔒 Privacy Policy & Terms of Use',
      name: 'privacyPolicyAndTermsOfUse',
      desc: '',
      args: [],
    );
  }

  /// `LooksMax Guide`
  String get looksMaxGuide {
    return Intl.message(
      'LooksMax Guide',
      name: 'looksMaxGuide',
      desc: '',
      args: [],
    );
  }

  /// `Face`
  String get face {
    return Intl.message(
      'Face',
      name: 'face',
      desc: '',
      args: [],
    );
  }

  /// `Skin`
  String get skin {
    return Intl.message(
      'Skin',
      name: 'skin',
      desc: '',
      args: [],
    );
  }

  /// `Hair`
  String get hair {
    return Intl.message(
      'Hair',
      name: 'hair',
      desc: '',
      args: [],
    );
  }

  /// `Jawline`
  String get jawline {
    return Intl.message(
      'Jawline',
      name: 'jawline',
      desc: '',
      args: [],
    );
  }

  /// `Eyes`
  String get eyes {
    return Intl.message(
      'Eyes',
      name: 'eyes',
      desc: '',
      args: [],
    );
  }

  /// `Mouth`
  String get mouth {
    return Intl.message(
      'Mouth',
      name: 'mouth',
      desc: '',
      args: [],
    );
  }

  /// `Cheekbones`
  String get cheekbones {
    return Intl.message(
      'Cheekbones',
      name: 'cheekbones',
      desc: '',
      args: [],
    );
  }

  /// `Nose`
  String get nose {
    return Intl.message(
      'Nose',
      name: 'nose',
      desc: '',
      args: [],
    );
  }

  /// `Forehead`
  String get forehead {
    return Intl.message(
      'Forehead',
      name: 'forehead',
      desc: '',
      args: [],
    );
  }

  /// `Sun Protection:`
  String get sunProtection {
    return Intl.message(
      'Sun Protection:',
      name: 'sunProtection',
      desc: '',
      args: [],
    );
  }

  /// `Eyebrows`
  String get eyebrows {
    return Intl.message(
      'Eyebrows',
      name: 'eyebrows',
      desc: '',
      args: [],
    );
  }

  /// `Ears`
  String get ears {
    return Intl.message(
      'Ears',
      name: 'ears',
      desc: '',
      args: [],
    );
  }

  /// `Fitness`
  String get fitness {
    return Intl.message(
      'Fitness',
      name: 'fitness',
      desc: '',
      args: [],
    );
  }

  /// `Fashion`
  String get fashion {
    return Intl.message(
      'Fashion',
      name: 'fashion',
      desc: '',
      args: [],
    );
  }

  /// `Grooming`
  String get grooming {
    return Intl.message(
      'Grooming',
      name: 'grooming',
      desc: '',
      args: [],
    );
  }

  /// `Compare`
  String get compare {
    return Intl.message(
      'Compare',
      name: 'compare',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get overview {
    return Intl.message(
      'Overview',
      name: 'overview',
      desc: '',
      args: [],
    );
  }

  /// `Conclusion`
  String get conclusion {
    return Intl.message(
      'Conclusion',
      name: 'conclusion',
      desc: '',
      args: [],
    );
  }

  /// `The eyes are a focal point of the face, often the first feature noticed during interactions. They reflect your health, emotions, and can significantly impact your overall facial aesthetics. Caring for the delicate skin around your eyes, enhancing your lashes and brows, and addressing common concerns like dark circles or puffiness are all crucial for brightening your eye area. This guide offers targeted advice to keep your eyes looking vibrant and expressive, from specialized skincare routines to simple exercises and grooming tips that highlight your eyes' natural beauty.`
  String get theEyesAreFocal {
    return Intl.message(
      'The eyes are a focal point of the face, often the first feature noticed during interactions. They reflect your health, emotions, and can significantly impact your overall facial aesthetics. Caring for the delicate skin around your eyes, enhancing your lashes and brows, and addressing common concerns like dark circles or puffiness are all crucial for brightening your eye area. This guide offers targeted advice to keep your eyes looking vibrant and expressive, from specialized skincare routines to simple exercises and grooming tips that highlight your eyes\' natural beauty.',
      name: 'theEyesAreFocal',
      desc: '',
      args: [],
    );
  }

  /// `Skincare:`
  String get skincare {
    return Intl.message(
      'Skincare:',
      name: 'skincare',
      desc: '',
      args: [],
    );
  }

  /// `Skincare`
  String get skincareSecond {
    return Intl.message(
      'Skincare',
      name: 'skincareSecond',
      desc: '',
      args: [],
    );
  }

  /// `Hydration`
  String get hydration {
    return Intl.message(
      'Hydration',
      name: 'hydration',
      desc: '',
      args: [],
    );
  }

  /// `Hydration:`
  String get secondHydration {
    return Intl.message(
      'Hydration:',
      name: 'secondHydration',
      desc: '',
      args: [],
    );
  }

  /// `Utilize eye creams rich in hyaluronic acid to keep the delicate skin around your eyes well-hydrated and plump.`
  String get utilizeEyeCreams {
    return Intl.message(
      'Utilize eye creams rich in hyaluronic acid to keep the delicate skin around your eyes well-hydrated and plump.',
      name: 'utilizeEyeCreams',
      desc: '',
      args: [],
    );
  }

  /// `Protection:`
  String get protection {
    return Intl.message(
      'Protection:',
      name: 'protection',
      desc: '',
      args: [],
    );
  }

  /// `Daily application of sunscreen around the eye area prevents premature aging and skin damage.`
  String get dailyApplicationOfSunscreen {
    return Intl.message(
      'Daily application of sunscreen around the eye area prevents premature aging and skin damage.',
      name: 'dailyApplicationOfSunscreen',
      desc: '',
      args: [],
    );
  }

  /// `Gentle Removal:`
  String get gentleRemoval {
    return Intl.message(
      'Gentle Removal:',
      name: 'gentleRemoval',
      desc: '',
      args: [],
    );
  }

  /// `Always remove eye makeup with a gentle, non-irritating makeup remover to avoid stress on the skin.`
  String get alwaysRemoveEye {
    return Intl.message(
      'Always remove eye makeup with a gentle, non-irritating makeup remover to avoid stress on the skin.',
      name: 'alwaysRemoveEye',
      desc: '',
      args: [],
    );
  }

  /// `Circles`
  String get circles {
    return Intl.message(
      'Circles',
      name: 'circles',
      desc: '',
      args: [],
    );
  }

  /// `Cool Compresses:`
  String get coolCompresses {
    return Intl.message(
      'Cool Compresses:',
      name: 'coolCompresses',
      desc: '',
      args: [],
    );
  }

  /// `Apply cool compresses or chilled tea bags to reduce under-eye puffiness and darkness.`
  String get applyCoolCompresses {
    return Intl.message(
      'Apply cool compresses or chilled tea bags to reduce under-eye puffiness and darkness.',
      name: 'applyCoolCompresses',
      desc: '',
      args: [],
    );
  }

  /// `Vitamin C Serum:`
  String get vitaminCSerum {
    return Intl.message(
      'Vitamin C Serum:',
      name: 'vitaminCSerum',
      desc: '',
      args: [],
    );
  }

  /// `A serum with Vitamin C can brighten the under-eye area and strengthen the skin’s natural defenses.`
  String get aSerumWithVitaminC {
    return Intl.message(
      'A serum with Vitamin C can brighten the under-eye area and strengthen the skin’s natural defenses.',
      name: 'aSerumWithVitaminC',
      desc: '',
      args: [],
    );
  }

  /// `Adequate Rest:`
  String get adequateRest {
    return Intl.message(
      'Adequate Rest:',
      name: 'adequateRest',
      desc: '',
      args: [],
    );
  }

  /// `Ensure you're getting enough sleep to prevent the appearance of dark circles.`
  String get ensureYouAreGetting {
    return Intl.message(
      'Ensure you\'re getting enough sleep to prevent the appearance of dark circles.',
      name: 'ensureYouAreGetting',
      desc: '',
      args: [],
    );
  }

  /// `Exercises`
  String get exercises {
    return Intl.message(
      'Exercises',
      name: 'exercises',
      desc: '',
      args: [],
    );
  }

  /// `Palming:`
  String get palming {
    return Intl.message(
      'Palming:',
      name: 'palming',
      desc: '',
      args: [],
    );
  }

  /// `Rub your hands together to generate warmth, then gently cup your palms over your closed eyes to relax them.`
  String get rubYourHands {
    return Intl.message(
      'Rub your hands together to generate warmth, then gently cup your palms over your closed eyes to relax them.',
      name: 'rubYourHands',
      desc: '',
      args: [],
    );
  }

  /// `Focus Changing:`
  String get focusChanging {
    return Intl.message(
      'Focus Changing:',
      name: 'focusChanging',
      desc: '',
      args: [],
    );
  }

  /// `Shift your focus from an object close to you to one far away periodically, to exercise your eye muscles.`
  String get shiftYourFocus {
    return Intl.message(
      'Shift your focus from an object close to you to one far away periodically, to exercise your eye muscles.',
      name: 'shiftYourFocus',
      desc: '',
      args: [],
    );
  }

  /// `Blinking:`
  String get blinking {
    return Intl.message(
      'Blinking:',
      name: 'blinking',
      desc: '',
      args: [],
    );
  }

  /// `Regular blinking while working on screens helps to keep your eyes moist and reduces eye strain.`
  String get regularBlinking {
    return Intl.message(
      'Regular blinking while working on screens helps to keep your eyes moist and reduces eye strain.',
      name: 'regularBlinking',
      desc: '',
      args: [],
    );
  }

  /// `Brows`
  String get brows {
    return Intl.message(
      'Brows',
      name: 'brows',
      desc: '',
      args: [],
    );
  }

  /// `Regular Trimming:`
  String get regularTrimming {
    return Intl.message(
      'Regular Trimming:',
      name: 'regularTrimming',
      desc: '',
      args: [],
    );
  }

  /// `Keep your eyebrows well-groomed by trimming and removing stray hairs to maintain their natural shape.`
  String get keepYourEyeBrows {
    return Intl.message(
      'Keep your eyebrows well-groomed by trimming and removing stray hairs to maintain their natural shape.',
      name: 'keepYourEyeBrows',
      desc: '',
      args: [],
    );
  }

  /// `Brow Gel:`
  String get browGel {
    return Intl.message(
      'Brow Gel:',
      name: 'browGel',
      desc: '',
      args: [],
    );
  }

  /// `Use a clear brow gel to set your eyebrows in place, giving them a neat, groomed appearance.`
  String get useAClear {
    return Intl.message(
      'Use a clear brow gel to set your eyebrows in place, giving them a neat, groomed appearance.',
      name: 'useAClear',
      desc: '',
      args: [],
    );
  }

  /// `Growth Serums:`
  String get growthSerums {
    return Intl.message(
      'Growth Serums:',
      name: 'growthSerums',
      desc: '',
      args: [],
    );
  }

  /// `If you have sparse eyebrows, consider using a brow growth serum to encourage thicker growth.`
  String get ifYouHaveSparse {
    return Intl.message(
      'If you have sparse eyebrows, consider using a brow growth serum to encourage thicker growth.',
      name: 'ifYouHaveSparse',
      desc: '',
      args: [],
    );
  }

  /// `Lashes`
  String get lashes {
    return Intl.message(
      'Lashes',
      name: 'lashes',
      desc: '',
      args: [],
    );
  }

  /// `Lash Serum:`
  String get lashSerum {
    return Intl.message(
      'Lash Serum:',
      name: 'lashSerum',
      desc: '',
      args: [],
    );
  }

  /// `Apply an eyelash serum nightly to promote growth and thickness.`
  String get applyAnEyeLash {
    return Intl.message(
      'Apply an eyelash serum nightly to promote growth and thickness.',
      name: 'applyAnEyeLash',
      desc: '',
      args: [],
    );
  }

  /// `Gentle Curling:`
  String get gentleCurling {
    return Intl.message(
      'Gentle Curling:',
      name: 'gentleCurling',
      desc: '',
      args: [],
    );
  }

  /// `Use an eyelash curler to gently curl your lashes, making your eyes appear larger and more awake.`
  String get useAnEyeLash {
    return Intl.message(
      'Use an eyelash curler to gently curl your lashes, making your eyes appear larger and more awake.',
      name: 'useAnEyeLash',
      desc: '',
      args: [],
    );
  }

  /// `Proper Removal:`
  String get properRemoval {
    return Intl.message(
      'Proper Removal:',
      name: 'properRemoval',
      desc: '',
      args: [],
    );
  }

  /// `Be cautious when removing eye makeup to avoid lash breakage. Opt for a nourishing makeup remover designed for the eyes.`
  String get beCautious {
    return Intl.message(
      'Be cautious when removing eye makeup to avoid lash breakage. Opt for a nourishing makeup remover designed for the eyes.',
      name: 'beCautious',
      desc: '',
      args: [],
    );
  }

  /// `This guide is designed to provide targeted strategies for enhancing the area around your eyes, addressing common concerns like dark circles, and offering tips for brow and lash care. Implementing these practices can lead to brighter, more vibrant eyes, complementing your overall appearance.`
  String get thisGuide {
    return Intl.message(
      'This guide is designed to provide targeted strategies for enhancing the area around your eyes, addressing common concerns like dark circles, and offering tips for brow and lash care. Implementing these practices can lead to brighter, more vibrant eyes, complementing your overall appearance.',
      name: 'thisGuide',
      desc: '',
      args: [],
    );
  }

  /// `The face is the most noticed part of our appearance and plays a vital role in our interactions and first impressions. Enhancing facial features not only boosts attractiveness but also uplifts confidence. This guide offers targeted advice for each key facial feature—eyes, mouth, cheekbones, nose, forehead, eyebrows, and ears—providing simple yet effective strategies to improve their appearance. Whether you're aiming to brighten your eyes, define your jawline, or maintain healthy skin, these tips are designed to help you present the best version of yourself.`
  String get theFaceMostNoticed {
    return Intl.message(
      'The face is the most noticed part of our appearance and plays a vital role in our interactions and first impressions. Enhancing facial features not only boosts attractiveness but also uplifts confidence. This guide offers targeted advice for each key facial feature—eyes, mouth, cheekbones, nose, forehead, eyebrows, and ears—providing simple yet effective strategies to improve their appearance. Whether you\'re aiming to brighten your eyes, define your jawline, or maintain healthy skin, these tips are designed to help you present the best version of yourself.',
      name: 'theFaceMostNoticed',
      desc: '',
      args: [],
    );
  }

  /// `Incorporate an eye cream into your daily routine to address dark circles and puffiness. Look for products with caffeine or vitamin C.`
  String get skincareEyes {
    return Intl.message(
      'Incorporate an eye cream into your daily routine to address dark circles and puffiness. Look for products with caffeine or vitamin C.',
      name: 'skincareEyes',
      desc: '',
      args: [],
    );
  }

  /// `Exercise:`
  String get exercise {
    return Intl.message(
      'Exercise:',
      name: 'exercise',
      desc: '',
      args: [],
    );
  }

  /// `Strengthen eye muscles with regular exercises; blinking and focusing on different distances can help.`
  String get exerciseEyes {
    return Intl.message(
      'Strengthen eye muscles with regular exercises; blinking and focusing on different distances can help.',
      name: 'exerciseEyes',
      desc: '',
      args: [],
    );
  }

  /// `Keep your body well-hydrated to support eye health and minimize bags.`
  String get hydrationEyes {
    return Intl.message(
      'Keep your body well-hydrated to support eye health and minimize bags.',
      name: 'hydrationEyes',
      desc: '',
      args: [],
    );
  }

  /// `Rest:`
  String get rest {
    return Intl.message(
      'Rest:',
      name: 'rest',
      desc: '',
      args: [],
    );
  }

  /// `Prioritize sleep to reduce eye strain and dark circles.`
  String get restEyes {
    return Intl.message(
      'Prioritize sleep to reduce eye strain and dark circles.',
      name: 'restEyes',
      desc: '',
      args: [],
    );
  }

  /// `Lip Care:`
  String get lipCare {
    return Intl.message(
      'Lip Care:',
      name: 'lipCare',
      desc: '',
      args: [],
    );
  }

  /// `Use a hydrating lip balm to keep your lips smooth and prevent chapping.`
  String get lipCareText {
    return Intl.message(
      'Use a hydrating lip balm to keep your lips smooth and prevent chapping.',
      name: 'lipCareText',
      desc: '',
      args: [],
    );
  }

  /// `Teeth Health:`
  String get teethHealth {
    return Intl.message(
      'Teeth Health:',
      name: 'teethHealth',
      desc: '',
      args: [],
    );
  }

  /// `Maintain dental hygiene with regular brushing, flossing, and dental check-ups. Whitening strips can enhance your smile if needed.`
  String get teethHealthText {
    return Intl.message(
      'Maintain dental hygiene with regular brushing, flossing, and dental check-ups. Whitening strips can enhance your smile if needed.',
      name: 'teethHealthText',
      desc: '',
      args: [],
    );
  }

  /// `Facial Exercises:`
  String get facialExercises {
    return Intl.message(
      'Facial Exercises:',
      name: 'facialExercises',
      desc: '',
      args: [],
    );
  }

  /// `Strengthen your jawline and mouth area with exercises that promote muscle tone and skin elasticity.`
  String get facialExercisesMouth {
    return Intl.message(
      'Strengthen your jawline and mouth area with exercises that promote muscle tone and skin elasticity.',
      name: 'facialExercisesMouth',
      desc: '',
      args: [],
    );
  }

  /// `Apply moisturizer and sunscreen to protect and maintain the skin’s elasticity.`
  String get skincareCheekbones {
    return Intl.message(
      'Apply moisturizer and sunscreen to protect and maintain the skin’s elasticity.',
      name: 'skincareCheekbones',
      desc: '',
      args: [],
    );
  }

  /// `Perform exercises that target the cheeks to enhance bone structure.`
  String get facialExercisesCheekbones {
    return Intl.message(
      'Perform exercises that target the cheeks to enhance bone structure.',
      name: 'facialExercisesCheekbones',
      desc: '',
      args: [],
    );
  }

  /// `Diet:`
  String get diet {
    return Intl.message(
      'Diet:',
      name: 'diet',
      desc: '',
      args: [],
    );
  }

  /// `Maintain a balanced diet rich in calcium and vitamin D to support bone health.`
  String get dietCheekbones {
    return Intl.message(
      'Maintain a balanced diet rich in calcium and vitamin D to support bone health.',
      name: 'dietCheekbones',
      desc: '',
      args: [],
    );
  }

  /// `Keep your nose area clean and well-moisturized to avoid enlarged pores or blackheads.`
  String get skincareNose {
    return Intl.message(
      'Keep your nose area clean and well-moisturized to avoid enlarged pores or blackheads.',
      name: 'skincareNose',
      desc: '',
      args: [],
    );
  }

  /// `Regular trimming of nose hair can improve the overall appearance.`
  String get groomingNose {
    return Intl.message(
      'Regular trimming of nose hair can improve the overall appearance.',
      name: 'groomingNose',
      desc: '',
      args: [],
    );
  }

  /// `Use sunscreen to prevent skin damage and maintain an even skin tone.`
  String get protectionNose {
    return Intl.message(
      'Use sunscreen to prevent skin damage and maintain an even skin tone.',
      name: 'protectionNose',
      desc: '',
      args: [],
    );
  }

  /// `Apply a nightly moisturizer to maintain skin hydration and reduce the appearance of lines.`
  String get hydrationForehead {
    return Intl.message(
      'Apply a nightly moisturizer to maintain skin hydration and reduce the appearance of lines.',
      name: 'hydrationForehead',
      desc: '',
      args: [],
    );
  }

  /// `Protect the skin with a high SPF sunscreen to prevent aging signs.`
  String get sunProtectionForehead {
    return Intl.message(
      'Protect the skin with a high SPF sunscreen to prevent aging signs.',
      name: 'sunProtectionForehead',
      desc: '',
      args: [],
    );
  }

  /// `Reduce forehead wrinkles with targeted facial exercises that improve muscle tone and skin elasticity.`
  String get facialExercisesForehead {
    return Intl.message(
      'Reduce forehead wrinkles with targeted facial exercises that improve muscle tone and skin elasticity.',
      name: 'facialExercisesForehead',
      desc: '',
      args: [],
    );
  }

  /// `Trim and shape your eyebrows regularly to enhance your facial features. Consider professional grooming for the best shape.`
  String get groomingEyebrows {
    return Intl.message(
      'Trim and shape your eyebrows regularly to enhance your facial features. Consider professional grooming for the best shape.',
      name: 'groomingEyebrows',
      desc: '',
      args: [],
    );
  }

  /// `Nourishment:`
  String get nourishment {
    return Intl.message(
      'Nourishment:',
      name: 'nourishment',
      desc: '',
      args: [],
    );
  }

  /// `Apply castor oil or eyebrow serum to promote growth and thickness.`
  String get nourishmentEyebrows {
    return Intl.message(
      'Apply castor oil or eyebrow serum to promote growth and thickness.',
      name: 'nourishmentEyebrows',
      desc: '',
      args: [],
    );
  }

  /// `Styling`
  String get styling {
    return Intl.message(
      'Styling',
      name: 'styling',
      desc: '',
      args: [],
    );
  }

  /// `Use a clear eyebrow gel to keep brows in place for a polished look.`
  String get stylingEyebrows {
    return Intl.message(
      'Use a clear eyebrow gel to keep brows in place for a polished look.',
      name: 'stylingEyebrows',
      desc: '',
      args: [],
    );
  }

  /// `Hygiene:`
  String get hygiene {
    return Intl.message(
      'Hygiene:',
      name: 'hygiene',
      desc: '',
      args: [],
    );
  }

  /// `Clean your ears regularly with a gentle cleanser to maintain hygiene and prevent buildup.`
  String get hygieneEars {
    return Intl.message(
      'Clean your ears regularly with a gentle cleanser to maintain hygiene and prevent buildup.',
      name: 'hygieneEars',
      desc: '',
      args: [],
    );
  }

  /// `Moisturize:`
  String get moisturize {
    return Intl.message(
      'Moisturize:',
      name: 'moisturize',
      desc: '',
      args: [],
    );
  }

  /// `Apply a light moisturizer around the ears to keep the skin soft and prevent dryness.`
  String get moisturizeEars {
    return Intl.message(
      'Apply a light moisturizer around the ears to keep the skin soft and prevent dryness.',
      name: 'moisturizeEars',
      desc: '',
      args: [],
    );
  }

  /// `Keep ear hair trimmed and neat. Regular checks for symmetry and proportion with your facial features can guide hairstyles that enhance your overall look.`
  String get groomingEars {
    return Intl.message(
      'Keep ear hair trimmed and neat. Regular checks for symmetry and proportion with your facial features can guide hairstyles that enhance your overall look.',
      name: 'groomingEars',
      desc: '',
      args: [],
    );
  }

  /// `This guide is curated to empower you with the knowledge and tools needed to enhance each facial feature effectively. Embrace these practices for a noticeable improvement in your facial aesthetics.`
  String get thisGuideCurated {
    return Intl.message(
      'This guide is curated to empower you with the knowledge and tools needed to enhance each facial feature effectively. Embrace these practices for a noticeable improvement in your facial aesthetics.',
      name: 'thisGuideCurated',
      desc: '',
      args: [],
    );
  }

  /// `Fashion is an expression of individuality—a way to convey your personality and preferences without saying a word. It's not just about following the latest trends; it's about understanding the fundamentals of fit, color, and style to create a wardrobe that feels uniquely yours. This guide explores the core aspects of fashion, from staying abreast of seasonal trends to mastering the art of fit, selecting the right accessories, and incorporating color effectively. Whether you're refining your current style or building a new look from the ground up, these insights will help you navigate the world of fashion with confidence, making informed choices that enhance your appearance and express your personal brand.`
  String get fashionIsExplored {
    return Intl.message(
      'Fashion is an expression of individuality—a way to convey your personality and preferences without saying a word. It\'s not just about following the latest trends; it\'s about understanding the fundamentals of fit, color, and style to create a wardrobe that feels uniquely yours. This guide explores the core aspects of fashion, from staying abreast of seasonal trends to mastering the art of fit, selecting the right accessories, and incorporating color effectively. Whether you\'re refining your current style or building a new look from the ground up, these insights will help you navigate the world of fashion with confidence, making informed choices that enhance your appearance and express your personal brand.',
      name: 'fashionIsExplored',
      desc: '',
      args: [],
    );
  }

  /// `Trends`
  String get trends {
    return Intl.message(
      'Trends',
      name: 'trends',
      desc: '',
      args: [],
    );
  }

  /// `Stay informed about current fashion trends by following reputable fashion blogs, magazines, and influencers. However, it's crucial to filter trends through the lens of your personal style and comfort.`
  String get stayInformed {
    return Intl.message(
      'Stay informed about current fashion trends by following reputable fashion blogs, magazines, and influencers. However, it\'s crucial to filter trends through the lens of your personal style and comfort.',
      name: 'stayInformed',
      desc: '',
      args: [],
    );
  }

  /// `Experiment with trend pieces by incorporating them into your existing wardrobe in small doses. This could mean trying out a trendy accessory or color before adopting a full trend-focused outfit.`
  String get experimentation {
    return Intl.message(
      'Experiment with trend pieces by incorporating them into your existing wardrobe in small doses. This could mean trying out a trendy accessory or color before adopting a full trend-focused outfit.',
      name: 'experimentation',
      desc: '',
      args: [],
    );
  }

  /// `Remember, not every trend is for everyone. Choose trends that resonate with your personal aesthetic and body type.`
  String get personalization {
    return Intl.message(
      'Remember, not every trend is for everyone. Choose trends that resonate with your personal aesthetic and body type.',
      name: 'personalization',
      desc: '',
      args: [],
    );
  }

  /// `Fit`
  String get fit {
    return Intl.message(
      'Fit',
      name: 'fit',
      desc: '',
      args: [],
    );
  }

  /// `Understanding and dressing for your body shape is key. Clothes that fit well enhance your appearance and boost confidence.`
  String get understandingYourBodyShape {
    return Intl.message(
      'Understanding and dressing for your body shape is key. Clothes that fit well enhance your appearance and boost confidence.',
      name: 'understandingYourBodyShape',
      desc: '',
      args: [],
    );
  }

  /// `Invest in tailoring. Even off-the-rack clothing can look custom-made with a few adjustments from a skilled tailor.`
  String get investInTailoring {
    return Intl.message(
      'Invest in tailoring. Even off-the-rack clothing can look custom-made with a few adjustments from a skilled tailor.',
      name: 'investInTailoring',
      desc: '',
      args: [],
    );
  }

  /// `Pay attention to how clothes fit across the shoulders, chest, and waist. These areas are crucial for achieving the right look, especially for formal or professional attire.`
  String get focusAreas {
    return Intl.message(
      'Pay attention to how clothes fit across the shoulders, chest, and waist. These areas are crucial for achieving the right look, especially for formal or professional attire.',
      name: 'focusAreas',
      desc: '',
      args: [],
    );
  }

  /// `Accessories`
  String get accessories {
    return Intl.message(
      'Accessories',
      name: 'accessories',
      desc: '',
      args: [],
    );
  }

  /// `Accessories can transform an outfit from ordinary to standout. Consider watches, belts, hats, sunglasses, and bags as ways to express your style.`
  String get transformYourOutfit {
    return Intl.message(
      'Accessories can transform an outfit from ordinary to standout. Consider watches, belts, hats, sunglasses, and bags as ways to express your style.',
      name: 'transformYourOutfit',
      desc: '',
      args: [],
    );
  }

  /// `Choose quality over quantity. A well-crafted watch or a high-quality leather belt can be a signature piece that elevates any outfit.`
  String get chooseQuality {
    return Intl.message(
      'Choose quality over quantity. A well-crafted watch or a high-quality leather belt can be a signature piece that elevates any outfit.',
      name: 'chooseQuality',
      desc: '',
      args: [],
    );
  }

  /// `Remember the rule of balance: if your outfit is bold, keep your accessories minimal, and vice versa.`
  String get ruleOfBalance {
    return Intl.message(
      'Remember the rule of balance: if your outfit is bold, keep your accessories minimal, and vice versa.',
      name: 'ruleOfBalance',
      desc: '',
      args: [],
    );
  }

  /// `Colors`
  String get colors {
    return Intl.message(
      'Colors',
      name: 'colors',
      desc: '',
      args: [],
    );
  }

  /// `Understand the basics of the color wheel and how colors complement or contrast with each other to create visually appealing outfits.`
  String get understandTheColorWheel {
    return Intl.message(
      'Understand the basics of the color wheel and how colors complement or contrast with each other to create visually appealing outfits.',
      name: 'understandTheColorWheel',
      desc: '',
      args: [],
    );
  }

  /// `Identify your personal color palette based on your skin tone, hair color, and personal preference. Wearing colors that complement your natural features can significantly enhance your overall look.`
  String get identifyYourPersonalColorPalette {
    return Intl.message(
      'Identify your personal color palette based on your skin tone, hair color, and personal preference. Wearing colors that complement your natural features can significantly enhance your overall look.',
      name: 'identifyYourPersonalColorPalette',
      desc: '',
      args: [],
    );
  }

  /// `Don’t shy away from color experimentation. While neutrals are safe and versatile, adding pops of color can add interest and personality to your outfits.`
  String get experimentWithColor {
    return Intl.message(
      'Don’t shy away from color experimentation. While neutrals are safe and versatile, adding pops of color can add interest and personality to your outfits.',
      name: 'experimentWithColor',
      desc: '',
      args: [],
    );
  }

  /// `Fashion is an ever-evolving field, but understanding its fundamentals can make it easier to navigate and use to your advantage. By focusing on trends that suit you, ensuring your clothes fit perfectly, thoughtfully selecting accessories, and understanding color theory, you can create a distinctive and personal style that stands the test of time.`
  String get fashionIsEverEvolving {
    return Intl.message(
      'Fashion is an ever-evolving field, but understanding its fundamentals can make it easier to navigate and use to your advantage. By focusing on trends that suit you, ensuring your clothes fit perfectly, thoughtfully selecting accessories, and understanding color theory, you can create a distinctive and personal style that stands the test of time.',
      name: 'fashionIsEverEvolving',
      desc: '',
      args: [],
    );
  }

  /// `Embarking on a fitness journey is about more than achieving a certain look; it's about nurturing your body's health, enhancing your physical capabilities, and improving your overall quality of life. This comprehensive guide is designed to walk you through the fundamental aspects of fitness—strength, cardio, nutrition, recovery, and flexibility. Each component plays a vital role in building a stronger, more resilient physique. Whether you're a beginner or looking to refine your existing routine, these insights will help you create a balanced approach tailored to your unique fitness goals.`
  String get subTitleOverview {
    return Intl.message(
      'Embarking on a fitness journey is about more than achieving a certain look; it\'s about nurturing your body\'s health, enhancing your physical capabilities, and improving your overall quality of life. This comprehensive guide is designed to walk you through the fundamental aspects of fitness—strength, cardio, nutrition, recovery, and flexibility. Each component plays a vital role in building a stronger, more resilient physique. Whether you\'re a beginner or looking to refine your existing routine, these insights will help you create a balanced approach tailored to your unique fitness goals.',
      name: 'subTitleOverview',
      desc: '',
      args: [],
    );
  }

  /// `Strength`
  String get titleListStrength {
    return Intl.message(
      'Strength',
      name: 'titleListStrength',
      desc: '',
      args: [],
    );
  }

  /// `Core Workouts:`
  String get text1Strength {
    return Intl.message(
      'Core Workouts:',
      name: 'text1Strength',
      desc: '',
      args: [],
    );
  }

  /// `Incorporate compound exercises like squats, deadlifts, and bench presses to build overall strength and muscle mass.`
  String get subText1Strength {
    return Intl.message(
      'Incorporate compound exercises like squats, deadlifts, and bench presses to build overall strength and muscle mass.',
      name: 'subText1Strength',
      desc: '',
      args: [],
    );
  }

  /// `Routine Variation:`
  String get text2Strength {
    return Intl.message(
      'Routine Variation:',
      name: 'text2Strength',
      desc: '',
      args: [],
    );
  }

  /// `Regularly change your workout routine to challenge different muscle groups and prevent plateaus.`
  String get subText2Strength {
    return Intl.message(
      'Regularly change your workout routine to challenge different muscle groups and prevent plateaus.',
      name: 'subText2Strength',
      desc: '',
      args: [],
    );
  }

  /// `Consistent Progression:`
  String get text3Strength {
    return Intl.message(
      'Consistent Progression:',
      name: 'text3Strength',
      desc: '',
      args: [],
    );
  }

  /// `Gradually increase the intensity of your workouts by adding weight, reps, or reducing rest times to foster strength gains.`
  String get subText3Strength {
    return Intl.message(
      'Gradually increase the intensity of your workouts by adding weight, reps, or reducing rest times to foster strength gains.',
      name: 'subText3Strength',
      desc: '',
      args: [],
    );
  }

  /// `Cardio`
  String get titleListCardio {
    return Intl.message(
      'Cardio',
      name: 'titleListCardio',
      desc: '',
      args: [],
    );
  }

  /// `Diverse Activities:`
  String get text1Cardio {
    return Intl.message(
      'Diverse Activities:',
      name: 'text1Cardio',
      desc: '',
      args: [],
    );
  }

  /// `Mix high-intensity interval training (HIIT) with steady-state cardio (like running or cycling) to maximize fat burning and cardiovascular health.`
  String get subText1Cardio {
    return Intl.message(
      'Mix high-intensity interval training (HIIT) with steady-state cardio (like running or cycling) to maximize fat burning and cardiovascular health.',
      name: 'subText1Cardio',
      desc: '',
      args: [],
    );
  }

  /// `Consistency:`
  String get text2Cardio {
    return Intl.message(
      'Consistency:',
      name: 'text2Cardio',
      desc: '',
      args: [],
    );
  }

  /// `Aim for at least 150 minutes of moderate aerobic activity or 75 minutes of vigorous activity each week.`
  String get subText2Cardio {
    return Intl.message(
      'Aim for at least 150 minutes of moderate aerobic activity or 75 minutes of vigorous activity each week.',
      name: 'subText2Cardio',
      desc: '',
      args: [],
    );
  }

  /// `Enjoyment Factor:`
  String get text3Cardio {
    return Intl.message(
      'Enjoyment Factor:',
      name: 'text3Cardio',
      desc: '',
      args: [],
    );
  }

  /// `Choose cardio activities you enjoy to ensure long-term commitment and results.`
  String get subText3Cardio {
    return Intl.message(
      'Choose cardio activities you enjoy to ensure long-term commitment and results.',
      name: 'subText3Cardio',
      desc: '',
      args: [],
    );
  }

  /// `Nutrition`
  String get titleListNutrition {
    return Intl.message(
      'Nutrition',
      name: 'titleListNutrition',
      desc: '',
      args: [],
    );
  }

  /// `Balanced Diet:`
  String get text1Nutrition {
    return Intl.message(
      'Balanced Diet:',
      name: 'text1Nutrition',
      desc: '',
      args: [],
    );
  }

  /// `Emphasize lean proteins, whole grains, healthy fats, and plenty of fruits and vegetables to support workout recovery and muscle growth.`
  String get subText1Nutrition {
    return Intl.message(
      'Emphasize lean proteins, whole grains, healthy fats, and plenty of fruits and vegetables to support workout recovery and muscle growth.',
      name: 'subText1Nutrition',
      desc: '',
      args: [],
    );
  }

  /// `Hydration:`
  String get text2Nutrition {
    return Intl.message(
      'Hydration:',
      name: 'text2Nutrition',
      desc: '',
      args: [],
    );
  }

  /// `Drink plenty of water throughout the day, especially before, during, and after workouts, to maintain optimal performance and recovery.`
  String get subText2Nutrition {
    return Intl.message(
      'Drink plenty of water throughout the day, especially before, during, and after workouts, to maintain optimal performance and recovery.',
      name: 'subText2Nutrition',
      desc: '',
      args: [],
    );
  }

  /// `Supplements:`
  String get text3Nutrition {
    return Intl.message(
      'Supplements:',
      name: 'text3Nutrition',
      desc: '',
      args: [],
    );
  }

  /// `Consider supplements such as protein powders, BCAAs, or creatine, after consulting with a healthcare professional, to support your fitness goals.`
  String get subText3Nutrition {
    return Intl.message(
      'Consider supplements such as protein powders, BCAAs, or creatine, after consulting with a healthcare professional, to support your fitness goals.',
      name: 'subText3Nutrition',
      desc: '',
      args: [],
    );
  }

  /// `Recovery`
  String get titleListRecovery {
    return Intl.message(
      'Recovery',
      name: 'titleListRecovery',
      desc: '',
      args: [],
    );
  }

  /// `Adequate Sleep:`
  String get text1Recovery {
    return Intl.message(
      'Adequate Sleep:',
      name: 'text1Recovery',
      desc: '',
      args: [],
    );
  }

  /// `Prioritize 7-9 hours of quality sleep per night to allow your muscles to repair and grow.`
  String get subText1Recovery {
    return Intl.message(
      'Prioritize 7-9 hours of quality sleep per night to allow your muscles to repair and grow.',
      name: 'subText1Recovery',
      desc: '',
      args: [],
    );
  }

  /// `Active Recovery:`
  String get text2Recovery {
    return Intl.message(
      'Active Recovery:',
      name: 'text2Recovery',
      desc: '',
      args: [],
    );
  }

  /// `Incorporate light activities like walking or yoga on rest days to promote circulation and muscle recovery.`
  String get subText2Recovery {
    return Intl.message(
      'Incorporate light activities like walking or yoga on rest days to promote circulation and muscle recovery.',
      name: 'subText2Recovery',
      desc: '',
      args: [],
    );
  }

  /// `Rest Days:`
  String get text3Recovery {
    return Intl.message(
      'Rest Days:',
      name: 'text3Recovery',
      desc: '',
      args: [],
    );
  }

  /// `Schedule regular rest days to prevent overtraining and injuries, allowing your body time to recuperate.`
  String get subText3Recovery {
    return Intl.message(
      'Schedule regular rest days to prevent overtraining and injuries, allowing your body time to recuperate.',
      name: 'subText3Recovery',
      desc: '',
      args: [],
    );
  }

  /// `Flexibility`
  String get titleListFlexibility {
    return Intl.message(
      'Flexibility',
      name: 'titleListFlexibility',
      desc: '',
      args: [],
    );
  }

  /// `Daily Stretching:`
  String get text1Flexibility {
    return Intl.message(
      'Daily Stretching:',
      name: 'text1Flexibility',
      desc: '',
      args: [],
    );
  }

  /// `Incorporate a mix of dynamic stretching before workouts and static stretching afterward to improve flexibility and performance.`
  String get subText1Flexibility {
    return Intl.message(
      'Incorporate a mix of dynamic stretching before workouts and static stretching afterward to improve flexibility and performance.',
      name: 'subText1Flexibility',
      desc: '',
      args: [],
    );
  }

  /// `Yoga or Pilates:`
  String get text2Flexibility {
    return Intl.message(
      'Yoga or Pilates:',
      name: 'text2Flexibility',
      desc: '',
      args: [],
    );
  }

  /// `Adding yoga or Pilates to your fitness routine can significantly enhance flexibility, core strength, and mental resilience.`
  String get subText2Flexibility {
    return Intl.message(
      'Adding yoga or Pilates to your fitness routine can significantly enhance flexibility, core strength, and mental resilience.',
      name: 'subText2Flexibility',
      desc: '',
      args: [],
    );
  }

  /// `Consistency:`
  String get text3Flexibility {
    return Intl.message(
      'Consistency:',
      name: 'text3Flexibility',
      desc: '',
      args: [],
    );
  }

  /// `Make flexibility training a consistent part of your routine to see gradual improvements and benefits.`
  String get subText3Flexibility {
    return Intl.message(
      'Make flexibility training a consistent part of your routine to see gradual improvements and benefits.',
      name: 'subText3Flexibility',
      desc: '',
      args: [],
    );
  }

  /// `Fitness is a multifaceted journey that encompasses more than just physical activity; it includes proper nutrition, adequate recovery, and flexibility work. Tailoring these elements to your personal goals and preferences is key to developing a balanced, effective fitness routine that promotes overall health and well-being. Start small, stay consistent, and celebrate your progress along the way.`
  String get fitnessIsAMultifaceted {
    return Intl.message(
      'Fitness is a multifaceted journey that encompasses more than just physical activity; it includes proper nutrition, adequate recovery, and flexibility work. Tailoring these elements to your personal goals and preferences is key to developing a balanced, effective fitness routine that promotes overall health and well-being. Start small, stay consistent, and celebrate your progress along the way.',
      name: 'fitnessIsAMultifaceted',
      desc: '',
      args: [],
    );
  }

  /// `Grooming is not just about maintaining cleanliness; it's an integral part of personal style and self-expression. This comprehensive guide delves into the art of grooming, covering everything from the basics of shaving and skincare to the nuances of haircare and selecting the right fragrance. It's designed to help you navigate the grooming landscape with confidence, ensuring that you can create and maintain a look that's both polished and uniquely yours. Whether you're refining your daily routine or exploring new grooming territories, these insights will provide the foundation you need to enhance your natural features and present your best self to the world.`
  String get groomingIsNotJust {
    return Intl.message(
      'Grooming is not just about maintaining cleanliness; it\'s an integral part of personal style and self-expression. This comprehensive guide delves into the art of grooming, covering everything from the basics of shaving and skincare to the nuances of haircare and selecting the right fragrance. It\'s designed to help you navigate the grooming landscape with confidence, ensuring that you can create and maintain a look that\'s both polished and uniquely yours. Whether you\'re refining your daily routine or exploring new grooming territories, these insights will provide the foundation you need to enhance your natural features and present your best self to the world.',
      name: 'groomingIsNotJust',
      desc: '',
      args: [],
    );
  }

  /// `Shaving`
  String get titleListShaving {
    return Intl.message(
      'Shaving',
      name: 'titleListShaving',
      desc: '',
      args: [],
    );
  }

  /// `Prep Your Skin:`
  String get prepYourSkinTitle {
    return Intl.message(
      'Prep Your Skin:',
      name: 'prepYourSkinTitle',
      desc: '',
      args: [],
    );
  }

  /// `Always start with a clean face. Use warm water or a hot towel to open pores and soften hairs for a closer shave.`
  String get prepYourSkin {
    return Intl.message(
      'Always start with a clean face. Use warm water or a hot towel to open pores and soften hairs for a closer shave.',
      name: 'prepYourSkin',
      desc: '',
      args: [],
    );
  }

  /// `Choose Quality Tools:`
  String get chooseQualityToolsTitle {
    return Intl.message(
      'Choose Quality Tools:',
      name: 'chooseQualityToolsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Invest in a good razor and change blades regularly to minimize skin irritation. Consider whether traditional razors, safety razors, or electric shavers best suit your skin and beard type.`
  String get chooseQualityTools {
    return Intl.message(
      'Invest in a good razor and change blades regularly to minimize skin irritation. Consider whether traditional razors, safety razors, or electric shavers best suit your skin and beard type.',
      name: 'chooseQualityTools',
      desc: '',
      args: [],
    );
  }

  /// `Use Proper Technique:`
  String get useProperTechniqueTitle {
    return Intl.message(
      'Use Proper Technique:',
      name: 'useProperTechniqueTitle',
      desc: '',
      args: [],
    );
  }

  /// `Shave in the direction of hair growth to reduce the risk of ingrown hairs and razor burn. Apply gentle pressure and use short, even strokes.`
  String get useProperTechnique {
    return Intl.message(
      'Shave in the direction of hair growth to reduce the risk of ingrown hairs and razor burn. Apply gentle pressure and use short, even strokes.',
      name: 'useProperTechnique',
      desc: '',
      args: [],
    );
  }

  /// `Aftercare:`
  String get aftercareTitle {
    return Intl.message(
      'Aftercare:',
      name: 'aftercareTitle',
      desc: '',
      args: [],
    );
  }

  /// `Rinse with cold water to close pores, and apply an alcohol-free aftershave or balm to soothe and moisturize the skin.`
  String get aftercare {
    return Intl.message(
      'Rinse with cold water to close pores, and apply an alcohol-free aftershave or balm to soothe and moisturize the skin.',
      name: 'aftercare',
      desc: '',
      args: [],
    );
  }

  /// `Skincare`
  String get titleListSkincare {
    return Intl.message(
      'Skincare',
      name: 'titleListSkincare',
      desc: '',
      args: [],
    );
  }

  /// `Daily Routine:`
  String get dailyRoutineTitle {
    return Intl.message(
      'Daily Routine:',
      name: 'dailyRoutineTitle',
      desc: '',
      args: [],
    );
  }

  /// `Develop a simple yet effective skincare routine that includes cleansing, moisturizing, and applying sunscreen daily. Tailor products to your skin type—oily, dry, combination, or sensitive.`
  String get dailyRoutine {
    return Intl.message(
      'Develop a simple yet effective skincare routine that includes cleansing, moisturizing, and applying sunscreen daily. Tailor products to your skin type—oily, dry, combination, or sensitive.',
      name: 'dailyRoutine',
      desc: '',
      args: [],
    );
  }

  /// `Exfoliate:`
  String get exfoliateTitle {
    return Intl.message(
      'Exfoliate:',
      name: 'exfoliateTitle',
      desc: '',
      args: [],
    );
  }

  /// `Regular exfoliation, 1-2 times a week, removes dead skin cells, promoting a clearer, smoother complexion.`
  String get exfoliate {
    return Intl.message(
      'Regular exfoliation, 1-2 times a week, removes dead skin cells, promoting a clearer, smoother complexion.',
      name: 'exfoliate',
      desc: '',
      args: [],
    );
  }

  /// `Drink plenty of water and maintain a diet rich in fruits and vegetables to keep your skin hydrated from the inside out.`
  String get drinkPlenty {
    return Intl.message(
      'Drink plenty of water and maintain a diet rich in fruits and vegetables to keep your skin hydrated from the inside out.',
      name: 'drinkPlenty',
      desc: '',
      args: [],
    );
  }

  /// `Professional Care:`
  String get professionalCareTitle {
    return Intl.message(
      'Professional Care:',
      name: 'professionalCareTitle',
      desc: '',
      args: [],
    );
  }

  /// `Consider visiting a dermatologist annually for a skin check-up and personalized skincare advice.`
  String get professionalCare {
    return Intl.message(
      'Consider visiting a dermatologist annually for a skin check-up and personalized skincare advice.',
      name: 'professionalCare',
      desc: '',
      args: [],
    );
  }

  /// `Haircare`
  String get titleListHaircare {
    return Intl.message(
      'Haircare',
      name: 'titleListHaircare',
      desc: '',
      args: [],
    );
  }

  /// `Washing:`
  String get washingTitle {
    return Intl.message(
      'Washing:',
      name: 'washingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Find the right balance for your hair type—washing too often can strip natural oils, while washing too infrequently can lead to buildup.`
  String get washing {
    return Intl.message(
      'Find the right balance for your hair type—washing too often can strip natural oils, while washing too infrequently can lead to buildup.',
      name: 'washing',
      desc: '',
      args: [],
    );
  }

  /// `Conditioning:`
  String get conditioningTitle {
    return Intl.message(
      'Conditioning:',
      name: 'conditioningTitle',
      desc: '',
      args: [],
    );
  }

  /// `Use conditioner to add moisture and shine, focusing on the mid-lengths and ends of your hair.`
  String get conditioning {
    return Intl.message(
      'Use conditioner to add moisture and shine, focusing on the mid-lengths and ends of your hair.',
      name: 'conditioning',
      desc: '',
      args: [],
    );
  }

  /// `Styling Products:`
  String get stylingProductsTitle {
    return Intl.message(
      'Styling Products:',
      name: 'stylingProductsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Choose styling products that match your hair type and desired look. Avoid heavy products that can weigh down your hair or contribute to buildup.`
  String get stylingProducts {
    return Intl.message(
      'Choose styling products that match your hair type and desired look. Avoid heavy products that can weigh down your hair or contribute to buildup.',
      name: 'stylingProducts',
      desc: '',
      args: [],
    );
  }

  /// `Regular Trims:`
  String get regularTrimsTitle {
    return Intl.message(
      'Regular Trims:',
      name: 'regularTrimsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Getting your hair trimmed every 6-8 weeks prevents split ends and maintains your hairstyle's shape.`
  String get regularTrims {
    return Intl.message(
      'Getting your hair trimmed every 6-8 weeks prevents split ends and maintains your hairstyle\'s shape.',
      name: 'regularTrims',
      desc: '',
      args: [],
    );
  }

  /// `Fragrance`
  String get titleListFragrance {
    return Intl.message(
      'Fragrance',
      name: 'titleListFragrance',
      desc: '',
      args: [],
    );
  }

  /// `Choosing a Fragrance:`
  String get choosingAFragranceTitle {
    return Intl.message(
      'Choosing a Fragrance:',
      name: 'choosingAFragranceTitle',
      desc: '',
      args: [],
    );
  }

  /// `When selecting a fragrance, consider your personal style and the occasions on which you'll wear it. Test fragrances on your skin and live with them for a few hours to see how they evolve.`
  String get choosingAFragrance {
    return Intl.message(
      'When selecting a fragrance, consider your personal style and the occasions on which you\'ll wear it. Test fragrances on your skin and live with them for a few hours to see how they evolve.',
      name: 'choosingAFragrance',
      desc: '',
      args: [],
    );
  }

  /// `Application:`
  String get applicationTitle {
    return Intl.message(
      'Application:',
      name: 'applicationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Apply fragrance to pulse points like wrists, neck, and chest. These areas emit heat, helping to diffuse the scent. Less is more—start with one or two spritzes and adjust based on the strength of the fragrance.`
  String get application {
    return Intl.message(
      'Apply fragrance to pulse points like wrists, neck, and chest. These areas emit heat, helping to diffuse the scent. Less is more—start with one or two spritzes and adjust based on the strength of the fragrance.',
      name: 'application',
      desc: '',
      args: [],
    );
  }

  /// `Storage:`
  String get storageTitle {
    return Intl.message(
      'Storage:',
      name: 'storageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Store your fragrances in a cool, dry place away from direct sunlight to preserve their quality.`
  String get storage {
    return Intl.message(
      'Store your fragrances in a cool, dry place away from direct sunlight to preserve their quality.',
      name: 'storage',
      desc: '',
      args: [],
    );
  }

  /// `Grooming is an essential aspect of personal care that enhances not just appearance but also confidence and personal hygiene. By adopting these grooming practices, you can ensure that you present the best version of yourself to the world.`
  String get groomingIsEssential {
    return Intl.message(
      'Grooming is an essential aspect of personal care that enhances not just appearance but also confidence and personal hygiene. By adopting these grooming practices, you can ensure that you present the best version of yourself to the world.',
      name: 'groomingIsEssential',
      desc: '',
      args: [],
    );
  }

  /// `Navigating the world of hair care can transform not just your hairstyle, but your entire look and confidence. Whether it's maintaining a healthy scalp, finding the right balance between cleansing and conditioning, or mastering the art of styling, each step in your hair care routine plays a crucial role. This guide will walk you through essential hair care practices, from selecting products to addressing common concerns like thinning, to ensure your hair remains a highlight of your personal style.`
  String get navigatingTheWorld {
    return Intl.message(
      'Navigating the world of hair care can transform not just your hairstyle, but your entire look and confidence. Whether it\'s maintaining a healthy scalp, finding the right balance between cleansing and conditioning, or mastering the art of styling, each step in your hair care routine plays a crucial role. This guide will walk you through essential hair care practices, from selecting products to addressing common concerns like thinning, to ensure your hair remains a highlight of your personal style.',
      name: 'navigatingTheWorld',
      desc: '',
      args: [],
    );
  }

  /// `Cleansing`
  String get cleansing {
    return Intl.message(
      'Cleansing',
      name: 'cleansing',
      desc: '',
      args: [],
    );
  }

  /// `Frequency:`
  String get frequency {
    return Intl.message(
      'Frequency:',
      name: 'frequency',
      desc: '',
      args: [],
    );
  }

  /// `Tailor your washing frequency to your hair type—oily scalps may need more frequent cleansing, while dry types might require less.`
  String get tailorYourWashingFrequency {
    return Intl.message(
      'Tailor your washing frequency to your hair type—oily scalps may need more frequent cleansing, while dry types might require less.',
      name: 'tailorYourWashingFrequency',
      desc: '',
      args: [],
    );
  }

  /// `Choosing Shampoo:`
  String get choosingShampoo {
    return Intl.message(
      'Choosing Shampoo:',
      name: 'choosingShampoo',
      desc: '',
      args: [],
    );
  }

  /// `Select a shampoo that matches your scalp condition. Sulfate-free formulas are gentler and suitable for most hair types.`
  String get selectAShampoo {
    return Intl.message(
      'Select a shampoo that matches your scalp condition. Sulfate-free formulas are gentler and suitable for most hair types.',
      name: 'selectAShampoo',
      desc: '',
      args: [],
    );
  }

  /// `Technique:`
  String get technique {
    return Intl.message(
      'Technique:',
      name: 'technique',
      desc: '',
      args: [],
    );
  }

  /// `Focus on cleansing the scalp rather than the hair length to avoid stripping moisture.`
  String get focusOnCleansing {
    return Intl.message(
      'Focus on cleansing the scalp rather than the hair length to avoid stripping moisture.',
      name: 'focusOnCleansing',
      desc: '',
      args: [],
    );
  }

  /// `Apply conditioner to the mid-lengths and ends, avoiding the scalp to prevent greasiness.`
  String get applyConditioner {
    return Intl.message(
      'Apply conditioner to the mid-lengths and ends, avoiding the scalp to prevent greasiness.',
      name: 'applyConditioner',
      desc: '',
      args: [],
    );
  }

  /// `Types of Conditioners:`
  String get typesOfConditioners {
    return Intl.message(
      'Types of Conditioners:',
      name: 'typesOfConditioners',
      desc: '',
      args: [],
    );
  }

  /// `Use leave-in conditioners for extra hydration or a deep conditioning mask once a week for intense moisture.`
  String get useLeaveInConditioners {
    return Intl.message(
      'Use leave-in conditioners for extra hydration or a deep conditioning mask once a week for intense moisture.',
      name: 'useLeaveInConditioners',
      desc: '',
      args: [],
    );
  }

  /// `Rinse Thoroughly:`
  String get rinseThoroughly {
    return Intl.message(
      'Rinse Thoroughly:',
      name: 'rinseThoroughly',
      desc: '',
      args: [],
    );
  }

  /// `Ensure no residue is left behind to maintain hair volume and texture.`
  String get ensureNoResidue {
    return Intl.message(
      'Ensure no residue is left behind to maintain hair volume and texture.',
      name: 'ensureNoResidue',
      desc: '',
      args: [],
    );
  }

  /// `Heat Protection:`
  String get heatProtection {
    return Intl.message(
      'Heat Protection:',
      name: 'heatProtection',
      desc: '',
      args: [],
    );
  }

  /// `Always use a heat protectant spray before applying heat styling tools to minimize damage.`
  String get alwaysUseAHeatProtectant {
    return Intl.message(
      'Always use a heat protectant spray before applying heat styling tools to minimize damage.',
      name: 'alwaysUseAHeatProtectant',
      desc: '',
      args: [],
    );
  }

  /// `Embrace Natural Texture:`
  String get embraceNaturalTexture {
    return Intl.message(
      'Embrace Natural Texture:',
      name: 'embraceNaturalTexture',
      desc: '',
      args: [],
    );
  }

  /// `Experiment with products that enhance your natural hair texture, from curl creams to volumizing sprays.`
  String get experimentWithProducts {
    return Intl.message(
      'Experiment with products that enhance your natural hair texture, from curl creams to volumizing sprays.',
      name: 'experimentWithProducts',
      desc: '',
      args: [],
    );
  }

  /// `Minimalist Approach:`
  String get minimalistApproach {
    return Intl.message(
      'Minimalist Approach:',
      name: 'minimalistApproach',
      desc: '',
      args: [],
    );
  }

  /// `Opt for hairstyles that require less manipulation to preserve hair health and reduce breakage.`
  String get optForHairstyles {
    return Intl.message(
      'Opt for hairstyles that require less manipulation to preserve hair health and reduce breakage.',
      name: 'optForHairstyles',
      desc: '',
      args: [],
    );
  }

  /// `Thinning`
  String get thinning {
    return Intl.message(
      'Thinning',
      name: 'thinning',
      desc: '',
      args: [],
    );
  }

  /// `Early Intervention:`
  String get earlyIntervention {
    return Intl.message(
      'Early Intervention:',
      name: 'earlyIntervention',
      desc: '',
      args: [],
    );
  }

  /// `Start treatments at the first signs of thinning. Over-the-counter options like minoxidil can be effective.`
  String get startTreatments {
    return Intl.message(
      'Start treatments at the first signs of thinning. Over-the-counter options like minoxidil can be effective.',
      name: 'startTreatments',
      desc: '',
      args: [],
    );
  }

  /// `Gentle Handling:`
  String get gentleHandling {
    return Intl.message(
      'Gentle Handling:',
      name: 'gentleHandling',
      desc: '',
      args: [],
    );
  }

  /// `Avoid tight hairstyles and harsh treatments that can exacerbate hair loss.`
  String get avoidTightHairstyles {
    return Intl.message(
      'Avoid tight hairstyles and harsh treatments that can exacerbate hair loss.',
      name: 'avoidTightHairstyles',
      desc: '',
      args: [],
    );
  }

  /// `Professional Advice:`
  String get professionalAdvice {
    return Intl.message(
      'Professional Advice:',
      name: 'professionalAdvice',
      desc: '',
      args: [],
    );
  }

  /// `Consult a dermatologist or trichologist for personalized treatment options, especially for pattern baldness or significant thinning.`
  String get consultADermatologist {
    return Intl.message(
      'Consult a dermatologist or trichologist for personalized treatment options, especially for pattern baldness or significant thinning.',
      name: 'consultADermatologist',
      desc: '',
      args: [],
    );
  }

  /// `Scalp Care`
  String get scalpCare {
    return Intl.message(
      'Scalp Care',
      name: 'scalpCare',
      desc: '',
      args: [],
    );
  }

  /// `Regular Exfoliation:`
  String get regularExfoliation {
    return Intl.message(
      'Regular Exfoliation:',
      name: 'regularExfoliation',
      desc: '',
      args: [],
    );
  }

  /// `Use a scalp scrub or brush to remove product buildup and dead skin cells, promoting healthy hair growth.`
  String get useAScalpScrub {
    return Intl.message(
      'Use a scalp scrub or brush to remove product buildup and dead skin cells, promoting healthy hair growth.',
      name: 'useAScalpScrub',
      desc: '',
      args: [],
    );
  }

  /// `If your scalp is dry, consider a hydrating scalp treatment or oil to balance moisture levels.`
  String get ifYourScalpIsDry {
    return Intl.message(
      'If your scalp is dry, consider a hydrating scalp treatment or oil to balance moisture levels.',
      name: 'ifYourScalpIsDry',
      desc: '',
      args: [],
    );
  }

  /// `Protect your scalp from UV damage with a hat or scalp-specific sunscreen, especially if your hair is thinning.`
  String get protectYourScalpFromUVDamage {
    return Intl.message(
      'Protect your scalp from UV damage with a hat or scalp-specific sunscreen, especially if your hair is thinning.',
      name: 'protectYourScalpFromUVDamage',
      desc: '',
      args: [],
    );
  }

  /// `Your hair's health and appearance are significantly influenced by how you treat it daily. From cleansing to styling, each step in your hair care routine should be tailored to your specific needs and concerns. Adopt these practices to ensure your hair remains strong, vibrant, and full of life.`
  String get yourHairsHealth {
    return Intl.message(
      'Your hair\'s health and appearance are significantly influenced by how you treat it daily. From cleansing to styling, each step in your hair care routine should be tailored to your specific needs and concerns. Adopt these practices to ensure your hair remains strong, vibrant, and full of life.',
      name: 'yourHairsHealth',
      desc: '',
      args: [],
    );
  }

  /// `A defined jawline is a coveted feature, symbolizing strength and attractiveness. Achieving and maintaining a sharp jawline involves a combination of targeted exercises, dietary choices, and skincare techniques. This section explores practical steps to enhance your jawline's definition, from exercises that tone facial muscles to contouring tips and professional treatments that refine your profile. Tailor your routine to sculpt a jawline that complements your facial features and boosts your confidence.`
  String get aDefinedJawline {
    return Intl.message(
      'A defined jawline is a coveted feature, symbolizing strength and attractiveness. Achieving and maintaining a sharp jawline involves a combination of targeted exercises, dietary choices, and skincare techniques. This section explores practical steps to enhance your jawline\'s definition, from exercises that tone facial muscles to contouring tips and professional treatments that refine your profile. Tailor your routine to sculpt a jawline that complements your facial features and boosts your confidence.',
      name: 'aDefinedJawline',
      desc: '',
      args: [],
    );
  }

  /// `Definition`
  String get definition {
    return Intl.message(
      'Definition',
      name: 'definition',
      desc: '',
      args: [],
    );
  }

  /// `A well-maintained skincare routine can enhance the skin’s elasticity around the jawline, providing a more defined appearance. Look for firming creams and serums that target this area.`
  String get aWellMaintainedSkincareRoutine {
    return Intl.message(
      'A well-maintained skincare routine can enhance the skin’s elasticity around the jawline, providing a more defined appearance. Look for firming creams and serums that target this area.',
      name: 'aWellMaintainedSkincareRoutine',
      desc: '',
      args: [],
    );
  }

  /// `Weight Management:`
  String get weightManagement {
    return Intl.message(
      'Weight Management:',
      name: 'weightManagement',
      desc: '',
      args: [],
    );
  }

  /// `Reducing excess body fat through a balanced diet and regular exercise can help in accentuating the jawline by diminishing the appearance of a double chin.`
  String get reducingExcessBodyFat {
    return Intl.message(
      'Reducing excess body fat through a balanced diet and regular exercise can help in accentuating the jawline by diminishing the appearance of a double chin.',
      name: 'reducingExcessBodyFat',
      desc: '',
      args: [],
    );
  }

  /// `Adequate water intake supports skin health and can contribute to a more defined jawline by reducing bloating and puffiness.`
  String get adequateWaterIntake {
    return Intl.message(
      'Adequate water intake supports skin health and can contribute to a more defined jawline by reducing bloating and puffiness.',
      name: 'adequateWaterIntake',
      desc: '',
      args: [],
    );
  }

  /// `Contouring`
  String get contouring {
    return Intl.message(
      'Contouring',
      name: 'contouring',
      desc: '',
      args: [],
    );
  }

  /// `Makeup:`
  String get makeup {
    return Intl.message(
      'Makeup:',
      name: 'makeup',
      desc: '',
      args: [],
    );
  }

  /// `Utilize contouring techniques with makeup to create the illusion of a more defined jawline. Apply a bronzer or contour powder slightly darker than your skin tone along the jawline and blend well.`
  String get utilizeContouringTechniques {
    return Intl.message(
      'Utilize contouring techniques with makeup to create the illusion of a more defined jawline. Apply a bronzer or contour powder slightly darker than your skin tone along the jawline and blend well.',
      name: 'utilizeContouringTechniques',
      desc: '',
      args: [],
    );
  }

  /// `Beard Styling:`
  String get beardStyling {
    return Intl.message(
      'Beard Styling:',
      name: 'beardStyling',
      desc: '',
      args: [],
    );
  }

  /// `For those who can grow facial hair, a well-groomed beard can help in defining the jawline. Keep the edges neat and consider a style that enhances the jaw’s natural shape.`
  String get forThoseWhoCanGrowFacialHair {
    return Intl.message(
      'For those who can grow facial hair, a well-groomed beard can help in defining the jawline. Keep the edges neat and consider a style that enhances the jaw’s natural shape.',
      name: 'forThoseWhoCanGrowFacialHair',
      desc: '',
      args: [],
    );
  }

  /// `Hairstyling:`
  String get hairstyling {
    return Intl.message(
      'Hairstyling:',
      name: 'hairstyling',
      desc: '',
      args: [],
    );
  }

  /// `Certain hairstyles can visually enhance the jawline. Short sides and back with a longer top can help elongate the face and make the jawline appear more pronounced.`
  String get certainHairstylesCanVisuallyEnhance {
    return Intl.message(
      'Certain hairstyles can visually enhance the jawline. Short sides and back with a longer top can help elongate the face and make the jawline appear more pronounced.',
      name: 'certainHairstylesCanVisuallyEnhance',
      desc: '',
      args: [],
    );
  }

  /// `Chin Tucks:`
  String get chinTucks {
    return Intl.message(
      'Chin Tucks:',
      name: 'chinTucks',
      desc: '',
      args: [],
    );
  }

  /// `This exercise helps in strengthening the neck muscles. Pull your chin straight back, creating a 'double chin' to feel a stretch along your neck. Hold for 5 seconds and release. Repeat 10 times.`
  String get thisExerciseHelpsInStrengthening {
    return Intl.message(
      'This exercise helps in strengthening the neck muscles. Pull your chin straight back, creating a \'double chin\' to feel a stretch along your neck. Hold for 5 seconds and release. Repeat 10 times.',
      name: 'thisExerciseHelpsInStrengthening',
      desc: '',
      args: [],
    );
  }

  /// `Jaw Clenching:`
  String get jawClenching {
    return Intl.message(
      'Jaw Clenching:',
      name: 'jawClenching',
      desc: '',
      args: [],
    );
  }

  /// `Clench your jaw for 10 seconds and release. Do this several times to work the muscles around the jaw.`
  String get clenchYourJawFor10Seconds {
    return Intl.message(
      'Clench your jaw for 10 seconds and release. Do this several times to work the muscles around the jaw.',
      name: 'clenchYourJawFor10Seconds',
      desc: '',
      args: [],
    );
  }

  /// `Neck Curls:`
  String get neckCurls {
    return Intl.message(
      'Neck Curls:',
      name: 'neckCurls',
      desc: '',
      args: [],
    );
  }

  /// `Lie on your back with your tongue pressed against the roof of your mouth. Lift your head slightly off the ground, focusing on using your neck muscles, not your abs. Lower and repeat.`
  String get lieOnYourBackWithYourTonguePressed {
    return Intl.message(
      'Lie on your back with your tongue pressed against the roof of your mouth. Lift your head slightly off the ground, focusing on using your neck muscles, not your abs. Lower and repeat.',
      name: 'lieOnYourBackWithYourTonguePressed',
      desc: '',
      args: [],
    );
  }

  /// `Mewing:`
  String get mewing {
    return Intl.message(
      'Mewing:',
      name: 'mewing',
      desc: '',
      args: [],
    );
  }

  /// `Practice proper tongue posture by resting your entire tongue on the roof of your mouth. This technique can help in defining the jawline over time.`
  String get practiceProperTonguePosture {
    return Intl.message(
      'Practice proper tongue posture by resting your entire tongue on the roof of your mouth. This technique can help in defining the jawline over time.',
      name: 'practiceProperTonguePosture',
      desc: '',
      args: [],
    );
  }

  /// `Improving the definition and contour of your jawline involves a combination of skincare, dietary habits, strategic styling, and targeted exercises. While genetics play a significant role in the shape of your jawline, these strategies can help in enhancing its appearance, contributing to a more sculpted and attractive profile. Remember, consistency is key to seeing results.`
  String get improvingTheDefinitionAndContour {
    return Intl.message(
      'Improving the definition and contour of your jawline involves a combination of skincare, dietary habits, strategic styling, and targeted exercises. While genetics play a significant role in the shape of your jawline, these strategies can help in enhancing its appearance, contributing to a more sculpted and attractive profile. Remember, consistency is key to seeing results.',
      name: 'improvingTheDefinitionAndContour',
      desc: '',
      args: [],
    );
  }

  /// `Skin health is a critical component of overall wellness and aesthetics. A radiant complexion not only enhances your looks but also reflects your internal health. This guide covers key areas of skin care—hydration, pigmentation, acne management, aging, and texture improvement. By focusing on these aspects, you can achieve a clearer, more youthful appearance and boost your confidence.`
  String get skinHealthIsCritical {
    return Intl.message(
      'Skin health is a critical component of overall wellness and aesthetics. A radiant complexion not only enhances your looks but also reflects your internal health. This guide covers key areas of skin care—hydration, pigmentation, acne management, aging, and texture improvement. By focusing on these aspects, you can achieve a clearer, more youthful appearance and boost your confidence.',
      name: 'skinHealthIsCritical',
      desc: '',
      args: [],
    );
  }

  /// `Importance of Moisturizing:`
  String get importanceOfMoisturizing {
    return Intl.message(
      'Importance of Moisturizing:',
      name: 'importanceOfMoisturizing',
      desc: '',
      args: [],
    );
  }

  /// `Regardless of your skin type, hydration is essential. It helps maintain the skin's barrier, preventing dryness and irritation.`
  String get regardlessOfYourSkinType {
    return Intl.message(
      'Regardless of your skin type, hydration is essential. It helps maintain the skin\'s barrier, preventing dryness and irritation.',
      name: 'regardlessOfYourSkinType',
      desc: '',
      args: [],
    );
  }

  /// `Choosing the Right Moisturizer:`
  String get choosingTheRightMoisturizer {
    return Intl.message(
      'Choosing the Right Moisturizer:',
      name: 'choosingTheRightMoisturizer',
      desc: '',
      args: [],
    );
  }

  /// `Look for products that match your skin type. Ingredients like hyaluronic acid and glycerin draw moisture into the skin, while ceramides help retain it.`
  String get lookForProductsThatMatch {
    return Intl.message(
      'Look for products that match your skin type. Ingredients like hyaluronic acid and glycerin draw moisture into the skin, while ceramides help retain it.',
      name: 'lookForProductsThatMatch',
      desc: '',
      args: [],
    );
  }

  /// `Hydration From Within:`
  String get hydrationFromWithin {
    return Intl.message(
      'Hydration From Within:',
      name: 'hydrationFromWithin',
      desc: '',
      args: [],
    );
  }

  /// `Drinking enough water and eating water-rich foods like fruits and vegetables can significantly improve your skin's hydration levels.`
  String get drinkingEnoughWater {
    return Intl.message(
      'Drinking enough water and eating water-rich foods like fruits and vegetables can significantly improve your skin\'s hydration levels.',
      name: 'drinkingEnoughWater',
      desc: '',
      args: [],
    );
  }

  /// `Pigmentation`
  String get pigmentation {
    return Intl.message(
      'Pigmentation',
      name: 'pigmentation',
      desc: '',
      args: [],
    );
  }

  /// `Understanding Hyperpigmentation:`
  String get understandingHyperpigmentation {
    return Intl.message(
      'Understanding Hyperpigmentation:',
      name: 'understandingHyperpigmentation',
      desc: '',
      args: [],
    );
  }

  /// `Caused by excess melanin production, it can result from sun exposure, inflammation, or hormonal changes.`
  String get causedByExcessMelaninProduction {
    return Intl.message(
      'Caused by excess melanin production, it can result from sun exposure, inflammation, or hormonal changes.',
      name: 'causedByExcessMelaninProduction',
      desc: '',
      args: [],
    );
  }

  /// `Preventive Measures:`
  String get preventiveMeasures {
    return Intl.message(
      'Preventive Measures:',
      name: 'preventiveMeasures',
      desc: '',
      args: [],
    );
  }

  /// `Use a broad-spectrum sunscreen daily to protect against UV-induced pigmentation. Vitamin C serums can also help brighten the skin and reduce dark spots.`
  String get useABroadSpectrumSunscreen {
    return Intl.message(
      'Use a broad-spectrum sunscreen daily to protect against UV-induced pigmentation. Vitamin C serums can also help brighten the skin and reduce dark spots.',
      name: 'useABroadSpectrumSunscreen',
      desc: '',
      args: [],
    );
  }

  /// `Professional Treatments:`
  String get professionalTreatments {
    return Intl.message(
      'Professional Treatments:',
      name: 'professionalTreatments',
      desc: '',
      args: [],
    );
  }

  /// `For stubborn pigmentation, consider treatments like chemical peels, laser therapy, or topical prescriptions from a dermatologist.`
  String get forStubbornPigmentation {
    return Intl.message(
      'For stubborn pigmentation, consider treatments like chemical peels, laser therapy, or topical prescriptions from a dermatologist.',
      name: 'forStubbornPigmentation',
      desc: '',
      args: [],
    );
  }

  /// `Acne`
  String get acne {
    return Intl.message(
      'Acne',
      name: 'acne',
      desc: '',
      args: [],
    );
  }

  /// `Gentle Cleansing:`
  String get gentleCleansing {
    return Intl.message(
      'Gentle Cleansing:',
      name: 'gentleCleansing',
      desc: '',
      args: [],
    );
  }

  /// `Use a mild cleanser to remove impurities without stripping the skin's natural oils, which can exacerbate acne.`
  String get useAMildCleanser {
    return Intl.message(
      'Use a mild cleanser to remove impurities without stripping the skin\'s natural oils, which can exacerbate acne.',
      name: 'useAMildCleanser',
      desc: '',
      args: [],
    );
  }

  /// `Topical Treatments:`
  String get topicalTreatments {
    return Intl.message(
      'Topical Treatments:',
      name: 'topicalTreatments',
      desc: '',
      args: [],
    );
  }

  /// `Over-the-counter products containing salicylic acid or benzoyl peroxide can effectively treat mild to moderate acne. For persistent cases, seek advice from a dermatologist.`
  String get overTheCounterProducts {
    return Intl.message(
      'Over-the-counter products containing salicylic acid or benzoyl peroxide can effectively treat mild to moderate acne. For persistent cases, seek advice from a dermatologist.',
      name: 'overTheCounterProducts',
      desc: '',
      args: [],
    );
  }

  /// `Lifestyle Factors:`
  String get lifestyleFactors {
    return Intl.message(
      'Lifestyle Factors:',
      name: 'lifestyleFactors',
      desc: '',
      args: [],
    );
  }

  /// `Diet, stress, and hygiene can all impact acne. Maintain a balanced diet, manage stress through activities like exercise or meditation, and avoid touching your face with unclean hands.`
  String get dietStressAndHygiene {
    return Intl.message(
      'Diet, stress, and hygiene can all impact acne. Maintain a balanced diet, manage stress through activities like exercise or meditation, and avoid touching your face with unclean hands.',
      name: 'dietStressAndHygiene',
      desc: '',
      args: [],
    );
  }

  /// `Aging`
  String get aging {
    return Intl.message(
      'Aging',
      name: 'aging',
      desc: '',
      args: [],
    );
  }

  /// `UV exposure accelerates skin aging, making sunscreen your best anti-aging tool.`
  String get uvExposureAcceleratesSkinAging {
    return Intl.message(
      'UV exposure accelerates skin aging, making sunscreen your best anti-aging tool.',
      name: 'uvExposureAcceleratesSkinAging',
      desc: '',
      args: [],
    );
  }

  /// `Retinoids:`
  String get retinoids {
    return Intl.message(
      'Retinoids:',
      name: 'retinoids',
      desc: '',
      args: [],
    );
  }

  /// `These vitamin A derivatives are gold standards in anti-aging skincare, promoting cell turnover and collagen production to reduce fine lines and improve skin texture.`
  String get theseVitaminADerivatives {
    return Intl.message(
      'These vitamin A derivatives are gold standards in anti-aging skincare, promoting cell turnover and collagen production to reduce fine lines and improve skin texture.',
      name: 'theseVitaminADerivatives',
      desc: '',
      args: [],
    );
  }

  /// `Antioxidants:`
  String get antioxidants {
    return Intl.message(
      'Antioxidants:',
      name: 'antioxidants',
      desc: '',
      args: [],
    );
  }

  /// `Products containing antioxidants like vitamin E, vitamin C, and green tea can protect the skin from environmental damage and support skin repair.`
  String get productsContainingAntioxidants {
    return Intl.message(
      'Products containing antioxidants like vitamin E, vitamin C, and green tea can protect the skin from environmental damage and support skin repair.',
      name: 'productsContainingAntioxidants',
      desc: '',
      args: [],
    );
  }

  /// `Texture`
  String get texture {
    return Intl.message(
      'Texture',
      name: 'texture',
      desc: '',
      args: [],
    );
  }

  /// `Exfoliation:`
  String get exfoliation {
    return Intl.message(
      'Exfoliation:',
      name: 'exfoliation',
      desc: '',
      args: [],
    );
  }

  /// `Regular exfoliation can remove dead skin cells, revealing smoother skin. Opt for chemical exfoliants like AHAs or BHAs for a gentle approach.`
  String get regularExfoliationCanRemove {
    return Intl.message(
      'Regular exfoliation can remove dead skin cells, revealing smoother skin. Opt for chemical exfoliants like AHAs or BHAs for a gentle approach.',
      name: 'regularExfoliationCanRemove',
      desc: '',
      args: [],
    );
  }

  /// `Properly hydrated skin appears plumper and smoother. In addition to topical moisturizers, consider using a humidifier to maintain air moisture.`
  String get properlyHydratedSkinAppears {
    return Intl.message(
      'Properly hydrated skin appears plumper and smoother. In addition to topical moisturizers, consider using a humidifier to maintain air moisture.',
      name: 'properlyHydratedSkinAppears',
      desc: '',
      args: [],
    );
  }

  /// `Persistent texture issues, such as scarring or deep wrinkles, may benefit from dermatological treatments like microdermabrasion, microneedling, or laser resurfacing.`
  String get persistentTextureIssues {
    return Intl.message(
      'Persistent texture issues, such as scarring or deep wrinkles, may benefit from dermatological treatments like microdermabrasion, microneedling, or laser resurfacing.',
      name: 'persistentTextureIssues',
      desc: '',
      args: [],
    );
  }

  /// `Healthy skin is a blend of proper care, nutrition, and sometimes professional guidance. By addressing each aspect of skin health—hydration, pigmentation, acne, aging, and texture—you can enhance your skin's natural beauty and maintain its health over the long term. Remember, the journey to great skin is ongoing and evolves with your needs and lifestyle.`
  String get healthySkinIsABlend {
    return Intl.message(
      'Healthy skin is a blend of proper care, nutrition, and sometimes professional guidance. By addressing each aspect of skin health—hydration, pigmentation, acne, aging, and texture—you can enhance your skin\'s natural beauty and maintain its health over the long term. Remember, the journey to great skin is ongoing and evolves with your needs and lifestyle.',
      name: 'healthySkinIsABlend',
      desc: '',
      args: [],
    );
  }

  /// `Just One More Step! 🚀`
  String get titleOnboardingNotification {
    return Intl.message(
      'Just One More Step! 🚀',
      name: 'titleOnboardingNotification',
      desc: '',
      args: [],
    );
  }

  /// `Complete onboarding to reveal your results.`
  String get bodyOnboardingNotification {
    return Intl.message(
      'Complete onboarding to reveal your results.',
      name: 'bodyOnboardingNotification',
      desc: '',
      args: [],
    );
  }

  /// `Your Results Are Ready! ✅`
  String get titleSubscriptionNotification {
    return Intl.message(
      'Your Results Are Ready! ✅',
      name: 'titleSubscriptionNotification',
      desc: '',
      args: [],
    );
  }

  /// `Tap to reveal your personal score.`
  String get bodySubscriptionNotification {
    return Intl.message(
      'Tap to reveal your personal score.',
      name: 'bodySubscriptionNotification',
      desc: '',
      args: [],
    );
  }

  /// `Go Deeper! 🔬\n`
  String get titleDeepNotification {
    return Intl.message(
      'Go Deeper! 🔬\n',
      name: 'titleDeepNotification',
      desc: '',
      args: [],
    );
  }

  /// `Tap to get a deep scan for detailed insights.`
  String get bodyDeepNotification {
    return Intl.message(
      'Tap to get a deep scan for detailed insights.',
      name: 'bodyDeepNotification',
      desc: '',
      args: [],
    );
  }

  /// `AI-Powered Skin Analyzer`
  String get aiPoweredSkinAnalyzer {
    return Intl.message(
      'AI-Powered Skin Analyzer',
      name: 'aiPoweredSkinAnalyzer',
      desc: '',
      args: [],
    );
  }

  /// `Dive Deep into Your Skin's Insights`
  String get diveDeepIntoYourSkin {
    return Intl.message(
      'Dive Deep into Your Skin\'s Insights',
      name: 'diveDeepIntoYourSkin',
      desc: '',
      args: [],
    );
  }

  /// `Oil & Dryness Check`
  String get oilDryness {
    return Intl.message(
      'Oil & Dryness Check',
      name: 'oilDryness',
      desc: '',
      args: [],
    );
  }

  /// `Get an in-depth analysis of your skin type, oiliness level, blackhead count, and pore condition.`
  String get getAnInDepthAnalysis {
    return Intl.message(
      'Get an in-depth analysis of your skin type, oiliness level, blackhead count, and pore condition.',
      name: 'getAnInDepthAnalysis',
      desc: '',
      args: [],
    );
  }

  /// `Red & Rough Area`
  String get redRoughArea {
    return Intl.message(
      'Red & Rough Area',
      name: 'redRoughArea',
      desc: '',
      args: [],
    );
  }

  /// `Pores & Enhanced Texture Lines`
  String get poresEnhanced {
    return Intl.message(
      'Pores & Enhanced Texture Lines',
      name: 'poresEnhanced',
      desc: '',
      args: [],
    );
  }

  /// `Rough Area & Blackheads`
  String get roughAreaBlackheads {
    return Intl.message(
      'Rough Area & Blackheads',
      name: 'roughAreaBlackheads',
      desc: '',
      args: [],
    );
  }

  /// `One-time 7.99 US$. Secured with iTunes`
  String get oneTimeSub {
    return Intl.message(
      'One-time 7.99 US\$. Secured with iTunes',
      name: 'oneTimeSub',
      desc: '',
      args: [],
    );
  }

  /// `One-time 7.99 US$. Secured with Google Play`
  String get oneTimeSubPlayMarket {
    return Intl.message(
      'One-time 7.99 US\$. Secured with Google Play',
      name: 'oneTimeSubPlayMarket',
      desc: '',
      args: [],
    );
  }

  /// `Start Deep Skin Analysis`
  String get startDeepSkin {
    return Intl.message(
      'Start Deep Skin Analysis',
      name: 'startDeepSkin',
      desc: '',
      args: [],
    );
  }

  /// `Please wait for your results...`
  String get pleaseWaitForYourResults {
    return Intl.message(
      'Please wait for your results...',
      name: 'pleaseWaitForYourResults',
      desc: '',
      args: [],
    );
  }

  /// `Deep Scanning Results`
  String get deepScanningResult {
    return Intl.message(
      'Deep Scanning Results',
      name: 'deepScanningResult',
      desc: '',
      args: [],
    );
  }

  /// `Your Results:`
  String get yourRes {
    return Intl.message(
      'Your Results:',
      name: 'yourRes',
      desc: '',
      args: [],
    );
  }

  /// `Make New Scan`
  String get makeNewScan {
    return Intl.message(
      'Make New Scan',
      name: 'makeNewScan',
      desc: '',
      args: [],
    );
  }

  /// `Overall:`
  String get overall {
    return Intl.message(
      'Overall:',
      name: 'overall',
      desc: '',
      args: [],
    );
  }

  /// `Potential:`
  String get potential {
    return Intl.message(
      'Potential:',
      name: 'potential',
      desc: '',
      args: [],
    );
  }

  /// `You’re a `
  String get youAreA {
    return Intl.message(
      'You’re a ',
      name: 'youAreA',
      desc: '',
      args: [],
    );
  }

  /// `Top 18% in the World`
  String get top18 {
    return Intl.message(
      'Top 18% in the World',
      name: 'top18',
      desc: '',
      args: [],
    );
  }

  /// `Top 12% in the World`
  String get top12 {
    return Intl.message(
      'Top 12% in the World',
      name: 'top12',
      desc: '',
      args: [],
    );
  }

  /// `Top 3% in the World`
  String get top3 {
    return Intl.message(
      'Top 3% in the World',
      name: 'top3',
      desc: '',
      args: [],
    );
  }

  /// `Top 1% in the World`
  String get top1 {
    return Intl.message(
      'Top 1% in the World',
      name: 'top1',
      desc: '',
      args: [],
    );
  }

  /// `Deep Scan`
  String get deepScan {
    return Intl.message(
      'Deep Scan',
      name: 'deepScan',
      desc: '',
      args: [],
    );
  }

  /// `Average`
  String get average {
    return Intl.message(
      'Average',
      name: 'average',
      desc: '',
      args: [],
    );
  }

  /// `Below Average`
  String get belowAverage {
    return Intl.message(
      'Below Average',
      name: 'belowAverage',
      desc: '',
      args: [],
    );
  }

  /// `Perceived age:`
  String get perceivedAge {
    return Intl.message(
      'Perceived age:',
      name: 'perceivedAge',
      desc: '',
      args: [],
    );
  }

  /// `Score Given by Female:`
  String get scoreGivenByWomen {
    return Intl.message(
      'Score Given by Female:',
      name: 'scoreGivenByWomen',
      desc: '',
      args: [],
    );
  }

  /// `Score Given by Male:`
  String get scoreGivenByMen {
    return Intl.message(
      'Score Given by Male:',
      name: 'scoreGivenByMen',
      desc: '',
      args: [],
    );
  }

  /// `Femininity`
  String get femininity {
    return Intl.message(
      'Femininity',
      name: 'femininity',
      desc: '',
      args: [],
    );
  }

  /// `GlowUp - Glow Up Tips, Skin AI`
  String get appName {
    return Intl.message(
      'GlowUp - Glow Up Tips, Skin AI',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Glow Up Tips for Girls`
  String get screenShotButtonSubTitle {
    return Intl.message(
      'Glow Up Tips for Girls',
      name: 'screenShotButtonSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Face Emotion`
  String get faceEmotion {
    return Intl.message(
      'Face Emotion',
      name: 'faceEmotion',
      desc: '',
      args: [],
    );
  }

  /// `Glass`
  String get glass {
    return Intl.message(
      'Glass',
      name: 'glass',
      desc: '',
      args: [],
    );
  }

  /// `Symmetry`
  String get symmetry {
    return Intl.message(
      'Symmetry',
      name: 'symmetry',
      desc: '',
      args: [],
    );
  }

  /// `Nose Shape`
  String get noseShape {
    return Intl.message(
      'Nose Shape',
      name: 'noseShape',
      desc: '',
      args: [],
    );
  }

  /// `Jawline Definition`
  String get jawlineDefinition {
    return Intl.message(
      'Jawline Definition',
      name: 'jawlineDefinition',
      desc: '',
      args: [],
    );
  }

  /// `Face Analyzing`
  String get faceAnalyzing {
    return Intl.message(
      'Face Analyzing',
      name: 'faceAnalyzing',
      desc: '',
      args: [],
    );
  }

  /// `Top`
  String get top {
    return Intl.message(
      'Top',
      name: 'top',
      desc: '',
      args: [],
    );
  }

  /// `Skin Analyzing`
  String get skinAnalyzing {
    return Intl.message(
      'Skin Analyzing',
      name: 'skinAnalyzing',
      desc: '',
      args: [],
    );
  }

  /// `Skin Quality`
  String get skinQuality {
    return Intl.message(
      'Skin Quality',
      name: 'skinQuality',
      desc: '',
      args: [],
    );
  }

  /// `Skin Health`
  String get skinHealthEnum {
    return Intl.message(
      'Skin Health',
      name: 'skinHealthEnum',
      desc: '',
      args: [],
    );
  }

  /// `Stain`
  String get stain {
    return Intl.message(
      'Stain',
      name: 'stain',
      desc: '',
      args: [],
    );
  }

  /// `Dark Circle`
  String get darkCircle {
    return Intl.message(
      'Dark Circle',
      name: 'darkCircle',
      desc: '',
      args: [],
    );
  }

  /// `🧴`
  String get skinQualityImage {
    return Intl.message(
      '🧴',
      name: 'skinQualityImage',
      desc: '',
      args: [],
    );
  }

  /// `✨`
  String get skinHealthImage {
    return Intl.message(
      '✨',
      name: 'skinHealthImage',
      desc: '',
      args: [],
    );
  }

  /// `💦`
  String get skinStainImage {
    return Intl.message(
      '💦',
      name: 'skinStainImage',
      desc: '',
      args: [],
    );
  }

  /// `⚫`
  String get skinDarkCircleImage {
    return Intl.message(
      '⚫',
      name: 'skinDarkCircleImage',
      desc: '',
      args: [],
    );
  }

  /// `📍`
  String get skinAcneImage {
    return Intl.message(
      '📍',
      name: 'skinAcneImage',
      desc: '',
      args: [],
    );
  }

  /// `Hair Analyzing`
  String get hairAnalyzing {
    return Intl.message(
      'Hair Analyzing',
      name: 'hairAnalyzing',
      desc: '',
      args: [],
    );
  }

  /// `Thickness`
  String get hairThickness {
    return Intl.message(
      'Thickness',
      name: 'hairThickness',
      desc: '',
      args: [],
    );
  }

  /// `Hair Health`
  String get hairHealth {
    return Intl.message(
      'Hair Health',
      name: 'hairHealth',
      desc: '',
      args: [],
    );
  }

  /// `Shine`
  String get hairShine {
    return Intl.message(
      'Shine',
      name: 'hairShine',
      desc: '',
      args: [],
    );
  }

  /// `Style`
  String get hairStyle {
    return Intl.message(
      'Style',
      name: 'hairStyle',
      desc: '',
      args: [],
    );
  }

  /// `Volume`
  String get hairVolume {
    return Intl.message(
      'Volume',
      name: 'hairVolume',
      desc: '',
      args: [],
    );
  }

  /// `🌟`
  String get hairThicknessImage {
    return Intl.message(
      '🌟',
      name: 'hairThicknessImage',
      desc: '',
      args: [],
    );
  }

  /// `🍃`
  String get hairHealthImage {
    return Intl.message(
      '🍃',
      name: 'hairHealthImage',
      desc: '',
      args: [],
    );
  }

  /// `✨`
  String get hairShineImage {
    return Intl.message(
      '✨',
      name: 'hairShineImage',
      desc: '',
      args: [],
    );
  }

  /// `💇‍♂️️`
  String get hairStyleImage {
    return Intl.message(
      '💇‍♂️️',
      name: 'hairStyleImage',
      desc: '',
      args: [],
    );
  }

  /// `💁‍♂️`
  String get hairVolumeImage {
    return Intl.message(
      '💁‍♂️',
      name: 'hairVolumeImage',
      desc: '',
      args: [],
    );
  }

  /// `Eyes Analyzing`
  String get eyesAnalyzing {
    return Intl.message(
      'Eyes Analyzing',
      name: 'eyesAnalyzing',
      desc: '',
      args: [],
    );
  }

  /// `Shape`
  String get eyesShape {
    return Intl.message(
      'Shape',
      name: 'eyesShape',
      desc: '',
      args: [],
    );
  }

  /// `Color`
  String get eyesColor {
    return Intl.message(
      'Color',
      name: 'eyesColor',
      desc: '',
      args: [],
    );
  }

  /// `Brightness`
  String get eyesBrightness {
    return Intl.message(
      'Brightness',
      name: 'eyesBrightness',
      desc: '',
      args: [],
    );
  }

  /// `Symmetry`
  String get eyesSymmetry {
    return Intl.message(
      'Symmetry',
      name: 'eyesSymmetry',
      desc: '',
      args: [],
    );
  }

  /// `Expressiveness`
  String get eyesExpressiveness {
    return Intl.message(
      'Expressiveness',
      name: 'eyesExpressiveness',
      desc: '',
      args: [],
    );
  }

  /// `👁️`
  String get eyesShapeImage {
    return Intl.message(
      '👁️',
      name: 'eyesShapeImage',
      desc: '',
      args: [],
    );
  }

  /// `🌈`
  String get eyesColorImage {
    return Intl.message(
      '🌈',
      name: 'eyesColorImage',
      desc: '',
      args: [],
    );
  }

  /// `✨`
  String get eyesBrightnessImage {
    return Intl.message(
      '✨',
      name: 'eyesBrightnessImage',
      desc: '',
      args: [],
    );
  }

  /// `📏`
  String get eyesSymmetryImage {
    return Intl.message(
      '📏',
      name: 'eyesSymmetryImage',
      desc: '',
      args: [],
    );
  }

  /// `😍`
  String get eyesExpressivenessImage {
    return Intl.message(
      '😍',
      name: 'eyesExpressivenessImage',
      desc: '',
      args: [],
    );
  }

  /// `Fitness Analyzing`
  String get fitnessAnalyzing {
    return Intl.message(
      'Fitness Analyzing',
      name: 'fitnessAnalyzing',
      desc: '',
      args: [],
    );
  }

  /// `Body Fat Percentage`
  String get fitnessBody {
    return Intl.message(
      'Body Fat Percentage',
      name: 'fitnessBody',
      desc: '',
      args: [],
    );
  }

  /// `Muscle Mass`
  String get fitnessMuscle {
    return Intl.message(
      'Muscle Mass',
      name: 'fitnessMuscle',
      desc: '',
      args: [],
    );
  }

  /// `Stamina`
  String get fitnessStamina {
    return Intl.message(
      'Stamina',
      name: 'fitnessStamina',
      desc: '',
      args: [],
    );
  }

  /// `Flexibility`
  String get fitnessFlexibility {
    return Intl.message(
      'Flexibility',
      name: 'fitnessFlexibility',
      desc: '',
      args: [],
    );
  }

  /// `Strength`
  String get fitnessStrength {
    return Intl.message(
      'Strength',
      name: 'fitnessStrength',
      desc: '',
      args: [],
    );
  }

  /// `💪`
  String get fitnessBodyImage {
    return Intl.message(
      '💪',
      name: 'fitnessBodyImage',
      desc: '',
      args: [],
    );
  }

  /// `🏋️‍`
  String get fitnessMuscleImage {
    return Intl.message(
      '🏋️‍',
      name: 'fitnessMuscleImage',
      desc: '',
      args: [],
    );
  }

  /// `🏃`
  String get fitnessStaminaImage {
    return Intl.message(
      '🏃',
      name: 'fitnessStaminaImage',
      desc: '',
      args: [],
    );
  }

  /// `🤸`
  String get fitnessFlexibilityImage {
    return Intl.message(
      '🤸',
      name: 'fitnessFlexibilityImage',
      desc: '',
      args: [],
    );
  }

  /// `🦾`
  String get fitnessStrengthImage {
    return Intl.message(
      '🦾',
      name: 'fitnessStrengthImage',
      desc: '',
      args: [],
    );
  }

  /// `✊`
  String get fitnessStrengthImageAndroid {
    return Intl.message(
      '✊',
      name: 'fitnessStrengthImageAndroid',
      desc: '',
      args: [],
    );
  }

  /// `Red Area`
  String get redArea {
    return Intl.message(
      'Red Area',
      name: 'redArea',
      desc: '',
      args: [],
    );
  }

  /// `Analysis of Dry/Oily Skin`
  String get analysisOfDryOilySkin {
    return Intl.message(
      'Analysis of Dry/Oily Skin',
      name: 'analysisOfDryOilySkin',
      desc: '',
      args: [],
    );
  }

  /// `Skin Type Classification`
  String get skinTypeClassification {
    return Intl.message(
      'Skin Type Classification',
      name: 'skinTypeClassification',
      desc: '',
      args: [],
    );
  }

  /// `Normal Skin`
  String get normalSkin {
    return Intl.message(
      'Normal Skin',
      name: 'normalSkin',
      desc: '',
      args: [],
    );
  }

  /// `Percentage of Oiliness`
  String get percentageOfOiliness {
    return Intl.message(
      'Percentage of Oiliness',
      name: 'percentageOfOiliness',
      desc: '',
      args: [],
    );
  }

  /// `Left Cheek`
  String get leftCheek {
    return Intl.message(
      'Left Cheek',
      name: 'leftCheek',
      desc: '',
      args: [],
    );
  }

  /// `Pore Analysis`
  String get poreAnalysis {
    return Intl.message(
      'Pore Analysis',
      name: 'poreAnalysis',
      desc: '',
      args: [],
    );
  }

  /// `Forehead Enlarged Pores Count`
  String get foreheadEnlargedPoresCount {
    return Intl.message(
      'Forehead Enlarged Pores Count',
      name: 'foreheadEnlargedPoresCount',
      desc: '',
      args: [],
    );
  }

  /// `Left Cheek Enlarged Pores Count`
  String get leftCheekEnlargedPoresCount {
    return Intl.message(
      'Left Cheek Enlarged Pores Count',
      name: 'leftCheekEnlargedPoresCount',
      desc: '',
      args: [],
    );
  }

  /// `Pigmentation Analysis`
  String get pigmentationAnalysis {
    return Intl.message(
      'Pigmentation Analysis',
      name: 'pigmentationAnalysis',
      desc: '',
      args: [],
    );
  }

  /// `Skin Type Classification`
  String get skinType {
    return Intl.message(
      'Skin Type Classification',
      name: 'skinType',
      desc: '',
      args: [],
    );
  }

  /// `ITA Skin Tone Type`
  String get itaSkinType {
    return Intl.message(
      'ITA Skin Tone Type',
      name: 'itaSkinType',
      desc: '',
      args: [],
    );
  }

  /// `Oily skin`
  String get oilySkin {
    return Intl.message(
      'Oily skin',
      name: 'oilySkin',
      desc: '',
      args: [],
    );
  }

  /// `Dry skin`
  String get drySkin {
    return Intl.message(
      'Dry skin',
      name: 'drySkin',
      desc: '',
      args: [],
    );
  }

  /// `Neutral skin`
  String get neutralSkin {
    return Intl.message(
      'Neutral skin',
      name: 'neutralSkin',
      desc: '',
      args: [],
    );
  }

  /// `Combination skin`
  String get combinationSkin {
    return Intl.message(
      'Combination skin',
      name: 'combinationSkin',
      desc: '',
      args: [],
    );
  }

  /// `Blackhead Count`
  String get blackheadCount {
    return Intl.message(
      'Blackhead Count',
      name: 'blackheadCount',
      desc: '',
      args: [],
    );
  }

  /// `Right Cheek`
  String get rightCheek {
    return Intl.message(
      'Right Cheek',
      name: 'rightCheek',
      desc: '',
      args: [],
    );
  }

  /// `Brown Area`
  String get brownArea {
    return Intl.message(
      'Brown Area',
      name: 'brownArea',
      desc: '',
      args: [],
    );
  }

  /// `Chin`
  String get chin {
    return Intl.message(
      'Chin',
      name: 'chin',
      desc: '',
      args: [],
    );
  }

  /// `Texture Enhanced Pores`
  String get textureEnhancedPores {
    return Intl.message(
      'Texture Enhanced Pores',
      name: 'textureEnhancedPores',
      desc: '',
      args: [],
    );
  }

  /// ` Very light`
  String get veryLight {
    return Intl.message(
      ' Very light',
      name: 'veryLight',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light {
    return Intl.message(
      'Light',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Intermediate`
  String get intermediate {
    return Intl.message(
      'Intermediate',
      name: 'intermediate',
      desc: '',
      args: [],
    );
  }

  /// `Tan`
  String get tan {
    return Intl.message(
      'Tan',
      name: 'tan',
      desc: '',
      args: [],
    );
  }

  /// `Brown/Dark`
  String get brownDark {
    return Intl.message(
      'Brown/Dark',
      name: 'brownDark',
      desc: '',
      args: [],
    );
  }

  /// `HA Skin Hue Type`
  String get skinHueType {
    return Intl.message(
      'HA Skin Hue Type',
      name: 'skinHueType',
      desc: '',
      args: [],
    );
  }

  /// `Yellowish`
  String get yellowish {
    return Intl.message(
      'Yellowish',
      name: 'yellowish',
      desc: '',
      args: [],
    );
  }

  /// `Neutral`
  String get neutral {
    return Intl.message(
      'Neutral',
      name: 'neutral',
      desc: '',
      args: [],
    );
  }

  /// `Reddish`
  String get reddish {
    return Intl.message(
      'Reddish',
      name: 'reddish',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Melanin Concentration`
  String get melaninConcentration {
    return Intl.message(
      'Melanin Concentration',
      name: 'melaninConcentration',
      desc: '',
      args: [],
    );
  }

  /// `Percentage of Melanin Deposition`
  String get percentageOfMelaninDeposition {
    return Intl.message(
      'Percentage of Melanin Deposition',
      name: 'percentageOfMelaninDeposition',
      desc: '',
      args: [],
    );
  }

  /// `Texture Enhanced Blackheads`
  String get textureEnhancedBlackheads {
    return Intl.message(
      'Texture Enhanced Blackheads',
      name: 'textureEnhancedBlackheads',
      desc: '',
      args: [],
    );
  }

  /// `Area Outline Map`
  String get areaOutlineMap {
    return Intl.message(
      'Area Outline Map',
      name: 'areaOutlineMap',
      desc: '',
      args: [],
    );
  }

  /// `Sensitivity Analysis`
  String get sensitivityAnalysis {
    return Intl.message(
      'Sensitivity Analysis',
      name: 'sensitivityAnalysis',
      desc: '',
      args: [],
    );
  }

  /// `Percentage of Sensitive Areas`
  String get percentageOfSensitiveAreas {
    return Intl.message(
      'Percentage of Sensitive Areas',
      name: 'percentageOfSensitiveAreas',
      desc: '',
      args: [],
    );
  }

  /// `Acne Analysis`
  String get acneAnalysis {
    return Intl.message(
      'Acne Analysis',
      name: 'acneAnalysis',
      desc: '',
      args: [],
    );
  }

  /// `Aging Analysis`
  String get agingAnalysis {
    return Intl.message(
      'Aging Analysis',
      name: 'agingAnalysis',
      desc: '',
      args: [],
    );
  }

  /// `Enhanced Texture Lines`
  String get enhancedTextureLines {
    return Intl.message(
      'Enhanced Texture Lines',
      name: 'enhancedTextureLines',
      desc: '',
      args: [],
    );
  }

  /// `Skin Age`
  String get skinAge {
    return Intl.message(
      'Skin Age',
      name: 'skinAge',
      desc: '',
      args: [],
    );
  }

  /// `Forehead Wrinkles`
  String get foreheadWrinkles {
    return Intl.message(
      'Forehead Wrinkles',
      name: 'foreheadWrinkles',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get none {
    return Intl.message(
      'None',
      name: 'none',
      desc: '',
      args: [],
    );
  }

  /// `Mild`
  String get mild {
    return Intl.message(
      'Mild',
      name: 'mild',
      desc: '',
      args: [],
    );
  }

  /// `Moderate`
  String get moderate {
    return Intl.message(
      'Moderate',
      name: 'moderate',
      desc: '',
      args: [],
    );
  }

  /// `Severe`
  String get severe {
    return Intl.message(
      'Severe',
      name: 'severe',
      desc: '',
      args: [],
    );
  }

  /// `No lines`
  String get noLines {
    return Intl.message(
      'No lines',
      name: 'noLines',
      desc: '',
      args: [],
    );
  }

  /// `There are lines`
  String get thereAreLines {
    return Intl.message(
      'There are lines',
      name: 'thereAreLines',
      desc: '',
      args: [],
    );
  }

  /// `Nasolabial Folds`
  String get nasolabialFolds {
    return Intl.message(
      'Nasolabial Folds',
      name: 'nasolabialFolds',
      desc: '',
      args: [],
    );
  }

  /// `Crows Feet`
  String get crowsFeet {
    return Intl.message(
      'Crows Feet',
      name: 'crowsFeet',
      desc: '',
      args: [],
    );
  }

  /// `No crow's feet`
  String get noCrowsFeet {
    return Intl.message(
      'No crow\'s feet',
      name: 'noCrowsFeet',
      desc: '',
      args: [],
    );
  }

  /// `With crow's feet`
  String get withCrowsFeet {
    return Intl.message(
      'With crow\'s feet',
      name: 'withCrowsFeet',
      desc: '',
      args: [],
    );
  }

  /// `Glabella Wrinkles`
  String get glabellaWrinkles {
    return Intl.message(
      'Glabella Wrinkles',
      name: 'glabellaWrinkles',
      desc: '',
      args: [],
    );
  }

  /// `No interbrow lines`
  String get noInterbrowLines {
    return Intl.message(
      'No interbrow lines',
      name: 'noInterbrowLines',
      desc: '',
      args: [],
    );
  }

  /// `With interbrow lines`
  String get withInterbrowLines {
    return Intl.message(
      'With interbrow lines',
      name: 'withInterbrowLines',
      desc: '',
      args: [],
    );
  }

  /// `Fine Lines on Forehead`
  String get fineLinesOnForehead {
    return Intl.message(
      'Fine Lines on Forehead',
      name: 'fineLinesOnForehead',
      desc: '',
      args: [],
    );
  }

  /// `No fine lines under the eyes`
  String get noFineLines {
    return Intl.message(
      'No fine lines under the eyes',
      name: 'noFineLines',
      desc: '',
      args: [],
    );
  }

  /// `With fine lines under the eyes`
  String get withFineLines {
    return Intl.message(
      'With fine lines under the eyes',
      name: 'withFineLines',
      desc: '',
      args: [],
    );
  }

  /// `Fine Lines under Left Eye`
  String get fineLinesUnderLeftEye {
    return Intl.message(
      'Fine Lines under Left Eye',
      name: 'fineLinesUnderLeftEye',
      desc: '',
      args: [],
    );
  }

  /// `Fine Lines under Right Eye`
  String get fineLinesUnderRightEye {
    return Intl.message(
      'Fine Lines under Right Eye',
      name: 'fineLinesUnderRightEye',
      desc: '',
      args: [],
    );
  }

  /// `Eye Issues Analysis`
  String get eyeIssuesAnalysis {
    return Intl.message(
      'Eye Issues Analysis',
      name: 'eyeIssuesAnalysis',
      desc: '',
      args: [],
    );
  }

  /// `Eye Bags`
  String get eyeBags {
    return Intl.message(
      'Eye Bags',
      name: 'eyeBags',
      desc: '',
      args: [],
    );
  }

  /// `No bags under the eyes`
  String get noBagsUnderEyes {
    return Intl.message(
      'No bags under the eyes',
      name: 'noBagsUnderEyes',
      desc: '',
      args: [],
    );
  }

  /// `With bags under the eyes`
  String get withBagsUnderEyes {
    return Intl.message(
      'With bags under the eyes',
      name: 'withBagsUnderEyes',
      desc: '',
      args: [],
    );
  }

  /// `Dark Circles`
  String get darkCircles {
    return Intl.message(
      'Dark Circles',
      name: 'darkCircles',
      desc: '',
      args: [],
    );
  }

  /// `No dark circles under the eyes`
  String get noDarkCircles {
    return Intl.message(
      'No dark circles under the eyes',
      name: 'noDarkCircles',
      desc: '',
      args: [],
    );
  }

  /// `Pigmented dark circles`
  String get pigmentedDarkCircles {
    return Intl.message(
      'Pigmented dark circles',
      name: 'pigmentedDarkCircles',
      desc: '',
      args: [],
    );
  }

  /// `Vascular dark circles`
  String get vascularDarkCircles {
    return Intl.message(
      'Vascular dark circles',
      name: 'vascularDarkCircles',
      desc: '',
      args: [],
    );
  }

  /// `Dark circles with shadows`
  String get darkCirclesWithShadows {
    return Intl.message(
      'Dark circles with shadows',
      name: 'darkCirclesWithShadows',
      desc: '',
      args: [],
    );
  }

  /// `Masculinity`
  String get mascularity {
    return Intl.message(
      'Masculinity',
      name: 'mascularity',
      desc: '',
      args: [],
    );
  }

  /// `Promocode activated`
  String get promoCodeActivated {
    return Intl.message(
      'Promocode activated',
      name: 'promoCodeActivated',
      desc: '',
      args: [],
    );
  }

  /// `Promocode is used or max number of using promocode is reached`
  String get promoCodeIsUsed {
    return Intl.message(
      'Promocode is used or max number of using promocode is reached',
      name: 'promoCodeIsUsed',
      desc: '',
      args: [],
    );
  }

  /// `Promocode not found`
  String get promoCodeNotFound {
    return Intl.message(
      'Promocode not found',
      name: 'promoCodeNotFound',
      desc: '',
      args: [],
    );
  }

  /// `This code doesn't found`
  String get thisCodeNotFound {
    return Intl.message(
      'This code doesn\'t found',
      name: 'thisCodeNotFound',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
