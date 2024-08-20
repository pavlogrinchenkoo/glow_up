import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:glow_up/api/change_appearance/dto.dart';
import 'package:glow_up/api/default_analysis/dto.dart';
import 'package:glow_up/api/history/dto.dart';
import 'package:glow_up/api/save_your_results/dto.dart';
import 'package:glow_up/api/show_your_results/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/routers/routes.dart';
import 'package:glow_up/screens/results_page/widgets/invite_friends/bottom_sheet.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/bloc_base.dart';
import 'package:glow_up/utils/notifi_service.dart';
import 'package:glow_up/utils/session.dart';
import 'package:get_storage/get_storage.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:image/image.dart' as img;

class ResultsBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  ResultsBloc() {
    setState(ScreenState());
  }

  final storage = GetStorage();
  final session = Session();

  void init(
      BuildContext context, ScreenshotController screenshotController) async {
    bool? isSubscribed = await storage.read(session.isUserSubscribed);
    await addDataForResultsPage(context);
    initializeListResultsModel(context);
    if (await storage.read(session.frontIconPath) != null) {
      setState(currentState.copyWith(loading: true));
      final frontIconPath = await storage.read(session.frontIconPath);
      final frontIconSize = await getImageDimensions(frontIconPath);
      setState(currentState.copyWith(
          frontIconPath: frontIconPath,
          frontIconSize: frontIconSize,
          loading: false));
    }
    await NotificationService()
        .scheduleSubscriptionNotifications(isSubscribed != true, S.of(context));
    if (await storage.read(session.isUserDisableBlur) != null) {
      if (await storage.read(session.isUserDisableBlur)) {
        setState(currentState.copyWith(useBlurBlock: false));
      }
    }
    if (await storage.read(session.addHistoryItem) == true &&
        await storage.read(session.isUserSubscribed) == true) {
      await addDefaultHistoryPhoto(context);
      await storage.write(session.addHistoryItem, false);
    }
  }

  void setActionButton(int index) {
    if (index == 0) {
      setState(currentState.copyWith(
        checkUseMethodsPhoto: false,
      ));
    } else {
      const appearanceMap = {
        1: [ChooseTextAppearanceEnum.face, ChooseActionAppearanceEnum.face],
        2: [ChooseTextAppearanceEnum.skin, ChooseActionAppearanceEnum.skin],
        3: [ChooseTextAppearanceEnum.hair, ChooseActionAppearanceEnum.hair],
        4: [ChooseTextAppearanceEnum.eyes, ChooseActionAppearanceEnum.eyes],
        5: [
          ChooseTextAppearanceEnum.fitness,
          ChooseActionAppearanceEnum.fitness
        ],
        // 6: [
        //   ChooseTextAppearanceEnum.fitness,
        //   ChooseActionAppearanceEnum.fitness
        // ],
        // 7: [
        //   ChooseTextAppearanceEnum.fashion,
        //   ChooseActionAppearanceEnum.fashion
        // ],
        // 8: [
        //   ChooseTextAppearanceEnum.grooming,
        //   ChooseActionAppearanceEnum.grooming
        // ],
      };

      if (appearanceMap.containsKey(index)) {
        final enums = appearanceMap[index];
        setState(currentState.copyWith(
            checkUseMethodsPhoto: true,
            changeAppearanceModel: ChangeAppearanceModel(
                chooseTextAppearanceEnum: enums?[0] as ChooseTextAppearanceEnum,
                chooseActionAppearanceEnum:
                    enums?[1] as ChooseActionAppearanceEnum)));
      }
    }
  }

  Future<void> checkUploadLimitAnalyze(BuildContext context) async {
    final currentDate = DateTime.now();
    final lastUpdateDateStr = await storage.read(session.isLastUpdateDate);
    final isScannedSevenDays =
        await storage.read(session.isUseScannedSevenDays);

    if (lastUpdateDateStr == null || isScannedSevenDays == null) {
      await storage.write(
          session.isLastUpdateDate, currentDate.toIso8601String());
      await storage.write(session.isUseScannedSevenDays, false);
      await storage.write(session.cardSaveResultsModel, null);
      context.router.push(OnboardingRoute(isUseFirstOnboarding: true));
      await storage.write(session.saveIconShare, null);
    } else {
      final lastUpdateDate = DateTime.parse(lastUpdateDateStr);
      final difference = currentDate.difference(lastUpdateDate).inDays;
      if (difference >= 7) {
        await storage.write(
            session.isLastUpdateDate, currentDate.toIso8601String());
        await storage.write(session.isUseScannedSevenDays, false);
        await storage.write(session.cardSaveResultsModel, null);
        context.router.push(OnboardingRoute(isUseFirstOnboarding: true));
        await storage.write(session.saveIconShare, null);
      } else if (isScannedSevenDays == false) {
        showDialogUploadLimit(context);
      }
    }
  }

  void showDialogUploadLimit(BuildContext context) {
    final S s = S.of(context);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.r20),
          ),
          backgroundColor: BC.white,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: Sizes.s35,
                  right: Sizes.s35,
                  top: Sizes.s70,
                  bottom: Sizes.s50,
                ),
                child: Text(
                  s.uploadLimitDialog,
                  style: BS.showDialogText,
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    context.router.maybePop();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void toMenu(BuildContext context) {
    context.router.push<dynamic>(const MenuRoute()).then((activateSheet) {
      if (activateSheet != null) {
        _handleReturnFromMenu(context, activateSheet);
      }
    });
  }

  void _handleReturnFromMenu(BuildContext context, bool activateSheet) {
    if (activateSheet) {
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

  void revealResults(BuildContext context) {
    context.router.push(const SubscriptionRoute());
  }

  void toDeep(BuildContext context) {
    context.router.push(const DeepScanningRoute());
  }

  Future<void> sharingWithFriend() async {
    try {
      const androidLink =
          "https://play.google.com/store/apps/details?id=com.looksmax.io";
      const iosLink = "https://apps.apple.com/us/app/looksmax-looksmaxxing-guide/id6477722230";
      final shareIconPath = await storage.read(session.saveIconShare);
      await Share.shareXFiles(
        text: "Are you a 10/10? Check your rating quickly with Looksmax!\n\n"
            "${Platform.isIOS ? iosLink : androidLink}",
        [XFile(shareIconPath)],
      );
    } catch (e) {
      throw Exception("Error sharing image: $e");
    }
  }

  Future<void> addDataForResultsPage(BuildContext context) async {
    final S s = S.of(context);
    final storedData = await storage.read(session.cardSaveResultsModel);
    final defaultAnalysis = await storage.read(session.defaultAnalysisModel);
    final defaultAnalysisModel = DefaultAnalysisModel.fromJson(defaultAnalysis);
    if (storedData != null) {
      final Map<String, dynamic> cardData =
          json.decode(storedData) as Map<String, dynamic>;
      final cardSaveYourResultsModel =
          CardSaveYourResultsModel.fromJson(cardData);
      if (defaultAnalysisModel != null) {
        setState(currentState.copyWith(
            cardSaveYourResultsModel: cardSaveYourResultsModel,
            defaultAnalysisModel: defaultAnalysisModel));
      } else {
        setState(currentState.copyWith(
            cardSaveYourResultsModel: cardSaveYourResultsModel));
      }
    } else {
      SaveMainResultsModel saveMainResultsModel =
          createSaveMainResultsModel(defaultAnalysisModel);
      SaveFaceResultsModel saveFaceResultsModel =
          createSaveFaceResultModel(defaultAnalysisModel);
      SaveSkinResultsModel saveSkinResultsModel =
          createSaveSkinResultModel(defaultAnalysisModel);
      SaveHairResultsModel saveHairResultsModel =
          createSaveHairResultModel(defaultAnalysisModel);
      SaveEyesResultsModel saveEyesResultsModel =
          createSaveEyesResultModel(defaultAnalysisModel);
      SaveFitnessResultsModel saveFitnessResultsModel =
          createSaveFitnessResultModel(defaultAnalysisModel);
      CardSaveYourResultsModel cardSaveYourResultsModel =
          CardSaveYourResultsModel(
        saveMainResultsModel: saveMainResultsModel,
        saveFaceResultsModel: saveFaceResultsModel,
        saveSkinResultsModel: saveSkinResultsModel,
        saveHairResultsModel: saveHairResultsModel,
        saveEyesResultsModel: saveEyesResultsModel,
        saveFitnessResultsModel: saveFitnessResultsModel,
      );

      setState(currentState.copyWith(
          cardSaveYourResultsModel: cardSaveYourResultsModel,
          defaultAnalysisModel: defaultAnalysisModel));

      await storage.write(session.cardSaveResultsModel,
          json.encode(cardSaveYourResultsModel.toJson()));

      await storage.write(
          session.futureDeepTitleHistory,
          currentState.cardSaveYourResultsModel?.saveMainResultsModel
                  .personalEstimate ??
              0.0);
      await storage.write(
          session.futureDeepSubTitleHistory,
          currentState.cardSaveYourResultsModel?.saveMainResultsModel
              .personalEstimateInWorldEnum
              .getTitle(s));
    }
  }

  SaveMainResultsModel createSaveMainResultsModel(
      DefaultAnalysisModel defaultAnalysis) {
    double personalEstimate =
        double.parse(calculateRandomDoubleData(4.2, 10).toStringAsFixed(1));
    SaveYourResultsEstimateInWorldEnum personalEstimateInWorldEnum =
        calculateEstimateWorldEnum(personalEstimate);

    int overallEstimate = (personalEstimate * 10).toInt();
    int randomAddition = calculateRandomIntData(3, 8);
    int potentialEstimate = overallEstimate + randomAddition;
    if (potentialEstimate > 100) {
      potentialEstimate = 100;
    }

    int valueScoreFemale =
        defaultAnalysis.attributes?.beauty.female_score.round() ?? 0;
    int valueScoreMale =
        defaultAnalysis.attributes?.beauty.male_score.round() ?? 0;
    int femininity = calculateRandomIntData(1, 10);
    int masculinity = calculateRandomIntData(1, 10);

    SaveMainResultsModel saveMainResultsModel = SaveMainResultsModel(
      personalEstimate: personalEstimate,
      personalEstimateInWorldEnum: personalEstimateInWorldEnum,
      overallEstimate: overallEstimate,
      potentialEstimate: potentialEstimate,
      age: defaultAnalysis.attributes?.age.value ?? 0,
      valueScoreFemale: valueScoreFemale,
      valueScoreMale: valueScoreMale,
      femininity: femininity,
      masculinity: masculinity,
      scoreEnumFemale: calculateRandomPercentEnum(valueScoreFemale),
      scoreEnumMale: calculateRandomPercentEnum(valueScoreMale),
      femininityEnum: calculateRandomIntegerEnum(femininity),
      masculinityEnum: calculateRandomIntegerEnum(masculinity),
    );
    return saveMainResultsModel;
  }

  SaveFaceResultsModel createSaveFaceResultModel(
      DefaultAnalysisModel defaultAnalysis) {
    String faceGlassAPI =
        defaultAnalysis.attributes?.glass.value.toString() ?? "";
    int faceAnalyzing = calculateRandomIntData(1, 20);
    int valueFaceSymmetry = calculateRatingFromAPIDate(
        defaultAnalysis.attributes?.facequality.value ?? 0);
    int valueFaceNoseShapeRandom = calculateRandomIntData(1, 10);
    int valueJawlineDefinitionRandom = calculateRandomIntData(1, 10);
    SaveFaceResultsModel saveFaceResultsModel = SaveFaceResultsModel(
      faceAnalyzingText: SaveFaceResultsEnum.faceAnalyzing,
      faceAnalyzingAPI: faceAnalyzing,
      faceEmotion: SaveFaceResultsEnum.faceEmotion,
      faceEmotionAPI: defaultAnalysis.attributes?.emotion.dominantEmotion ?? "",
      faceGlass: SaveFaceResultsEnum.glass,
      faceGlassAPI: faceGlassAPI,
      faceSymmetryRandomAPI: valueFaceSymmetry,
      faceNoseShapeRandomAPI: valueFaceNoseShapeRandom,
      faceJawlineDefinitionRandomAPI: valueJawlineDefinitionRandom,
      faceSymmetryText: SaveFaceResultsEnum.symmetry,
      faceNoseShapeText: SaveFaceResultsEnum.noseShape,
      faceJawlineDefinitionText: SaveFaceResultsEnum.jawlineDefinition,
      faceSymmetryRandomEnum: calculateRandomIntegerEnum(valueFaceSymmetry),
      faceNoseShapeRandomEnum:
          calculateRandomIntegerEnum(valueFaceNoseShapeRandom),
      faceJawlineDefinitionRandomEnum:
          calculateRandomIntegerEnum(valueJawlineDefinitionRandom),
    );
    return saveFaceResultsModel;
  }

  SaveSkinResultsModel createSaveSkinResultModel(
      DefaultAnalysisModel defaultAnalysis) {
    int skinAnalyzingAPI = calculateRandomIntData(1, 20).round();
    int skinQualityAPI = calculateRandomIntData(5, 10).round();
    int skinHealthAPI =
        defaultAnalysis.attributes?.skinstatus.health.round() ?? 0;
    int skinStainAPI =
        defaultAnalysis.attributes?.skinstatus.stain.round() ?? 0;
    int skinDarkCircleAPI = calculateRatingFromAPIDate(
        defaultAnalysis.attributes?.skinstatus.dark_circle ?? 0);
    int skinAcneAPI = calculateRatingFromAPIDate(
        defaultAnalysis.attributes?.skinstatus.acne ?? 0);

    SaveSkinResultsModel saveSkinResultsModel = SaveSkinResultsModel(
      skinAnalyzingText: SaveSkinResultsEnum.skinAnalyzing,
      skinQuality: SaveSkinResultsEnum.skinQuality,
      skinHealth: SaveSkinResultsEnum.skinHealth,
      skinStain: SaveSkinResultsEnum.stain,
      skinDarkCircle: SaveSkinResultsEnum.darkCircle,
      skinAcne: SaveSkinResultsEnum.acne,
      skinAnalyzingAPI: skinAnalyzingAPI,
      skinQualityAPI: skinQualityAPI,
      skinHealthAPI: skinHealthAPI,
      skinStainAPI: skinStainAPI,
      skinDarkCircleAPI: skinDarkCircleAPI,
      skinAcneAPI: skinAcneAPI,
      skinQualityEnum: calculateRandomIntegerEnum(skinQualityAPI),
      skinHealthEnum: calculateRandomPercentEnum(skinHealthAPI),
      skinStainEnum: calculateRandomPercentEnum(skinStainAPI),
      skinDarkCircleEnum: calculateRandomIntegerEnum(skinDarkCircleAPI),
      skinAcneEnum: calculateRandomIntegerEnum(skinAcneAPI),
    );
    return saveSkinResultsModel;
  }

  SaveHairResultsModel createSaveHairResultModel(
      DefaultAnalysisModel defaultAnalysis) {
    int hairAnalyzingAPI = calculateRandomIntData(1, 20).round();
    int hairThicknessAPI = calculateRandomIntData(1, 10);
    int hairHealthAPI = calculateRandomIntData(1, 10);
    int hairShineAPI = calculateRandomIntData(1, 10);
    int hairStyleAPI = calculateRandomIntData(1, 10);
    int hairVolumeAPI = calculateRandomIntData(1, 10);
    SaveHairResultsModel saveHairResultsModel = SaveHairResultsModel(
      hairAnalyzingText: SaveHairResultsEnum.hairAnalyzing,
      hairThickness: SaveHairResultsEnum.hairThickness,
      hairHealth: SaveHairResultsEnum.hairHealth,
      hairShine: SaveHairResultsEnum.hairShine,
      hairStyle: SaveHairResultsEnum.hairStyle,
      hairVolume: SaveHairResultsEnum.hairVolume,
      hairAnalyzingAPI: hairAnalyzingAPI,
      hairThicknessAPI: hairThicknessAPI,
      hairHealthAPI: hairHealthAPI,
      hairShineAPI: hairShineAPI,
      hairStyleAPI: hairStyleAPI,
      hairVolumeAPI: hairVolumeAPI,
      hairThicknessEnum: calculateRandomIntegerEnum(hairThicknessAPI),
      hairHealthEnum: calculateRandomIntegerEnum(hairHealthAPI),
      hairShineEnum: calculateRandomIntegerEnum(hairShineAPI),
      hairStyleEnum: calculateRandomIntegerEnum(hairStyleAPI),
      hairVolumeEnum: calculateRandomIntegerEnum(hairVolumeAPI),
    );
    return saveHairResultsModel;
  }

  SaveEyesResultsModel createSaveEyesResultModel(
      DefaultAnalysisModel defaultAnalysis) {
    int eyesAnalyzingAPI = calculateRandomIntData(1, 20).round();
    int eyesShapeAPI = calculateRandomIntData(1, 10);
    int eyesColorAPI = calculateRandomIntData(1, 10);
    int eyesBrightnessAPI = calculateRandomIntData(1, 10);
    int eyesSymmetryAPI = calculateRandomIntData(1, 10);
    int eyesExpressivenessAPI = calculateRandomIntData(1, 10);
    SaveEyesResultsModel saveEyesResultsModel = SaveEyesResultsModel(
      eyesAnalyzingText: SaveEyesResultsEnum.eyesAnalyzing,
      eyesShape: SaveEyesResultsEnum.eyesShape,
      eyesColor: SaveEyesResultsEnum.eyesColor,
      eyesBrightness: SaveEyesResultsEnum.eyesBrightness,
      eyesSymmetry: SaveEyesResultsEnum.eyesSymmetry,
      eyesExpressiveness: SaveEyesResultsEnum.eyesExpressiveness,
      eyesAnalyzingAPI: eyesAnalyzingAPI,
      eyesShapeAPI: eyesShapeAPI,
      eyesColorAPI: eyesColorAPI,
      eyesBrightnessAPI: eyesBrightnessAPI,
      eyesSymmetryAPI: eyesSymmetryAPI,
      eyesExpressivenessAPI: eyesExpressivenessAPI,
      eyesShapeEnum: calculateRandomIntegerEnum(eyesShapeAPI),
      eyesColorEnum: calculateRandomIntegerEnum(eyesColorAPI),
      eyesBrightnessEnum: calculateRandomIntegerEnum(eyesBrightnessAPI),
      eyesSymmetryEnum: calculateRandomIntegerEnum(eyesSymmetryAPI),
      eyesExpressivenessEnum: calculateRandomIntegerEnum(eyesExpressivenessAPI),
    );
    return saveEyesResultsModel;
  }

  SaveFitnessResultsModel createSaveFitnessResultModel(
      DefaultAnalysisModel defaultAnalysis) {
    int fitnessAnalyzingAPI = calculateRandomIntData(1, 20).round();
    int fitnessBodyAPI = calculateRandomIntData(1, 10);
    int fitnessMuscleAPI = calculateRandomIntData(1, 10);
    int fitnessStaminaAPI = calculateRandomIntData(1, 10);
    int fitnessFlexibilityAPI = calculateRandomIntData(1, 10);
    int fitnessStrengthAPI = calculateRandomIntData(1, 10);
    SaveFitnessResultsModel saveFitnessResultsModel = SaveFitnessResultsModel(
      fitnessAnalyzing: SaveFitnessResultsEnum.fitnessAnalyzing,
      fitnessBody: SaveFitnessResultsEnum.fitnessBody,
      fitnessMuscle: SaveFitnessResultsEnum.fitnessMuscle,
      fitnessStamina: SaveFitnessResultsEnum.fitnessStamina,
      fitnessFlexibility: SaveFitnessResultsEnum.fitnessFlexibility,
      fitnessStrength: SaveFitnessResultsEnum.fitnessStrength,
      fitnessAnalyzingAPI: fitnessAnalyzingAPI,
      fitnessBodyAPI: fitnessBodyAPI,
      fitnessMuscleAPI: fitnessMuscleAPI,
      fitnessStaminaAPI: fitnessStaminaAPI,
      fitnessFlexibilityAPI: fitnessFlexibilityAPI,
      fitnessStrengthAPI: fitnessStrengthAPI,
      fitnessBodyEnum: calculateRandomIntegerEnum(fitnessBodyAPI),
      fitnessMuscleEnum: calculateRandomIntegerEnum(fitnessMuscleAPI),
      fitnessStaminaEnum: calculateRandomIntegerEnum(fitnessStaminaAPI),
      fitnessFlexibilityEnum: calculateRandomIntegerEnum(fitnessFlexibilityAPI),
      fitnessStrengthEnum: calculateRandomIntegerEnum(fitnessStrengthAPI),
    );
    return saveFitnessResultsModel;
  }

  SaveResultsSubTextEnum calculateRandomPercentEnum(int value) {
    if (value >= 0 && value <= 40) {
      return SaveResultsSubTextEnum.belowAverage;
    } else if (value >= 41 && value <= 70) {
      return SaveResultsSubTextEnum.average;
    } else if (value >= 71 && value <= 100) {
      return SaveResultsSubTextEnum.random;
    } else {
      throw ArgumentError('Value must be between 0 and 100');
    }
  }

  SaveResultsSubTextEnum calculateRandomIntegerEnum(int value) {
    if (value >= 0 && value <= 4.0) {
      return SaveResultsSubTextEnum.belowAverage;
    } else if (value >= 4.1 && value <= 7.0) {
      return SaveResultsSubTextEnum.average;
    } else if (value >= 7.1 && value <= 10) {
      return SaveResultsSubTextEnum.random;
    } else {
      throw ArgumentError('Value must be between 0 and 100');
    }
  }

  double calculateRandomDoubleData(double minValue, double maxValue) {
    final random = Random();
    return minValue + random.nextDouble() * (maxValue - minValue);
  }

  int calculateRandomIntData(int minValue, int maxValue) {
    final random = Random();
    return minValue + random.nextInt(maxValue - minValue + 1);
  }

  int calculateRatingFromAPIDate(double value) {
    if (value >= 100) {
      return 10;
    } else if (value < 10) {
      return value.round();
    } else {
      return (value.round() ~/ 10).toInt();
    }
  }

  SaveYourResultsEstimateInWorldEnum calculateEstimateWorldEnum(
      double personalEstimate) {
    return personalEstimate <= 5
        ? SaveYourResultsEstimateInWorldEnum.top18
        : (personalEstimate <= 7 && personalEstimate >= 5.1)
            ? SaveYourResultsEstimateInWorldEnum.top12
            : (personalEstimate <= 9 && personalEstimate >= 7.1)
                ? SaveYourResultsEstimateInWorldEnum.top3
                : SaveYourResultsEstimateInWorldEnum.top1;
  }

  void initializeListResultsModel(BuildContext context) {
    final s = S.of(context);
    final mainResults =
        currentState.cardSaveYourResultsModel?.saveMainResultsModel;
    final faceResults =
        currentState.cardSaveYourResultsModel?.saveFaceResultsModel;
    final skinResults =
        currentState.cardSaveYourResultsModel?.saveSkinResultsModel;
    final hairResults =
        currentState.cardSaveYourResultsModel?.saveHairResultsModel;
    final eyesResults =
        currentState.cardSaveYourResultsModel?.saveEyesResultsModel;
    final fitnessResults =
        currentState.cardSaveYourResultsModel?.saveFitnessResultsModel;

    ShowYourResultsModel createShowYourResultsModel(
        ImageTextGroupEnum imageTextGroupEnum,
        String rightTitle,
        String leftTitle,
        String subLeftTitle,
        ColorGroupEnum colorGroupEnum) {
      return ShowYourResultsModel(
        imageTextGroupEnum: imageTextGroupEnum,
        rightTitle: rightTitle,
        leftTitle: leftTitle,
        subLeftTitle: subLeftTitle,
        colorGroupEnum: colorGroupEnum,
      );
    }

    CardShowYourResultsModel cardShowYourResultsModel =
        CardShowYourResultsModel(showMainCardResultsModelList: [
      createShowYourResultsModel(
          ImageTextGroupEnum.mainClockImage,
          mainResults?.age.toString() ?? "",
          s.perceivedAge,
          "",
          ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.mainGirlImage,
          "${mainResults?.valueScoreFemale}%",
          s.scoreGivenByWomen,
          "${mainResults?.scoreEnumFemale.getTitle(s)}",
          mainResults?.scoreEnumFemale.getColor(mainResults.scoreEnumFemale) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.mainManImage,
          "${mainResults?.valueScoreMale}%",
          s.scoreGivenByMen,
          "${mainResults?.scoreEnumMale.getTitle(s)}",
          mainResults?.scoreEnumMale.getColor(mainResults.scoreEnumFemale) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.mainFlowersImage,
          "${mainResults?.femininity}/10",
          s.femininity,
          "${mainResults?.femininityEnum.getTitle(s)}",
          mainResults?.femininityEnum.getColor(mainResults.femininityEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.mainStrongImage,
          "${mainResults?.masculinity}/10",
          s.mascularity,
          "${mainResults?.masculinityEnum.getTitle(s)}",
          mainResults?.masculinityEnum.getColor(mainResults.masculinityEnum) ??
              ColorGroupEnum.black),
    ], showFaceCardResultsModelList: [
      createShowYourResultsModel(
          ImageTextGroupEnum.faceEmotionImage,
          faceResults?.faceEmotionAPI ?? "",
          faceResults?.faceEmotion.getTitle(s) ?? "",
          "",
          ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.faceCoolImage,
          faceResults?.faceGlassAPI ?? "",
          faceResults?.faceGlass.getTitle(s) ?? "",
          "",
          ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.faceSymmetryImage,
          "${faceResults?.faceSymmetryRandomAPI}/10",
          faceResults?.faceSymmetryText.getTitle(s) ?? "",
          faceResults?.faceSymmetryRandomEnum.getTitle(s) ?? "",
          faceResults?.faceSymmetryRandomEnum
                  .getColor(faceResults.faceSymmetryRandomEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.faceNoseImage,
          "${faceResults?.faceNoseShapeRandomAPI}/10",
          faceResults?.faceNoseShapeText.getTitle(s) ?? "",
          faceResults?.faceNoseShapeRandomEnum.getTitle(s) ?? "",
          faceResults?.faceNoseShapeRandomEnum
                  .getColor(faceResults.faceNoseShapeRandomEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.faceJawlineImage,
          "${faceResults?.faceJawlineDefinitionRandomAPI}/10",
          faceResults?.faceJawlineDefinitionText.getTitle(s) ?? "",
          faceResults?.faceJawlineDefinitionRandomEnum.getTitle(s) ?? "",
          faceResults?.faceJawlineDefinitionRandomEnum
                  .getColor(faceResults.faceJawlineDefinitionRandomEnum) ??
              ColorGroupEnum.black),
    ], showSkinCardResultsModelList: [
      createShowYourResultsModel(
          ImageTextGroupEnum.skinQualityImage,
          "${skinResults?.skinQualityAPI}/10",
          skinResults?.skinQuality.getTitle(s) ?? "",
          skinResults?.skinQualityEnum.getTitle(s) ?? "",
          skinResults?.skinQualityEnum.getColor(skinResults.skinQualityEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.skinHealthImage,
          "${skinResults?.skinHealthAPI}%",
          skinResults?.skinHealth.getTitle(s) ?? "",
          skinResults?.skinHealthEnum.getTitle(s) ?? "",
          skinResults?.skinHealthEnum.getColor(skinResults.skinHealthEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.skinStainImage,
          "${skinResults?.skinStainAPI}%",
          skinResults?.skinStain.getTitle(s) ?? "",
          skinResults?.skinStainEnum.getTitle(s) ?? "",
          skinResults?.skinStainEnum.getColor(skinResults.skinStainEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.skinDarkCircleImage,
          "${skinResults?.skinDarkCircleAPI}/10",
          skinResults?.skinDarkCircle.getTitle(s) ?? "",
          skinResults?.skinDarkCircleEnum.getTitle(s) ?? "",
          skinResults?.skinDarkCircleEnum
                  .getColor(skinResults.skinDarkCircleEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.skinAcneImage,
          "${skinResults?.skinAcneAPI}/10",
          skinResults?.skinAcne.getTitle(s) ?? "",
          skinResults?.skinAcneEnum.getTitle(s) ?? "",
          skinResults?.skinAcneEnum.getColor(skinResults.skinAcneEnum) ??
              ColorGroupEnum.black),
    ], showHairCardResultsModelList: [
      createShowYourResultsModel(
          ImageTextGroupEnum.hairThicknessImage,
          "${hairResults?.hairThicknessAPI}/10",
          hairResults?.hairThickness.getTitle(s) ?? "",
          hairResults?.hairThicknessEnum.getTitle(s) ?? "",
          hairResults?.hairThicknessEnum
                  .getColor(hairResults.hairThicknessEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.hairHealthImage,
          "${hairResults?.hairHealthAPI}/10",
          hairResults?.hairHealth.getTitle(s) ?? "",
          hairResults?.hairHealthEnum.getTitle(s) ?? "",
          hairResults?.hairHealthEnum.getColor(hairResults.hairHealthEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.hairShineImage,
          "${hairResults?.hairShineAPI}/10",
          hairResults?.hairShine.getTitle(s) ?? "",
          hairResults?.hairShineEnum.getTitle(s) ?? "",
          hairResults?.hairShineEnum.getColor(hairResults.hairShineEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.hairStyleImage,
          "${hairResults?.hairStyleAPI}/10",
          hairResults?.hairStyle.getTitle(s) ?? "",
          hairResults?.hairStyleEnum.getTitle(s) ?? "",
          hairResults?.hairStyleEnum.getColor(hairResults.hairStyleEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.hairVolumeImage,
          "${hairResults?.hairVolumeAPI}/10",
          hairResults?.hairVolume.getTitle(s) ?? "",
          hairResults?.hairVolumeEnum.getTitle(s) ?? "",
          hairResults?.hairVolumeEnum.getColor(hairResults.hairVolumeEnum) ??
              ColorGroupEnum.black),
    ], showEyesCardResultsModelList: [
      createShowYourResultsModel(
          ImageTextGroupEnum.eyesShapeImage,
          "${eyesResults?.eyesShapeAPI}/10",
          eyesResults?.eyesShape.getTitle(s) ?? "",
          eyesResults?.eyesShapeEnum.getTitle(s) ?? "",
          eyesResults?.eyesShapeEnum.getColor(eyesResults.eyesShapeEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.eyesColorImage,
          "${eyesResults?.eyesColorAPI}/10",
          eyesResults?.eyesColor.getTitle(s) ?? "",
          eyesResults?.eyesColorEnum.getTitle(s) ?? "",
          eyesResults?.eyesColorEnum.getColor(eyesResults.eyesColorEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.eyesBrightnessImage,
          "${eyesResults?.eyesBrightnessAPI}/10",
          eyesResults?.eyesBrightness.getTitle(s) ?? "",
          eyesResults?.eyesBrightnessEnum.getTitle(s) ?? "",
          eyesResults?.eyesBrightnessEnum
                  .getColor(eyesResults.eyesBrightnessEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.eyesSymmetryImage,
          "${eyesResults?.eyesSymmetryAPI}/10",
          eyesResults?.eyesSymmetry.getTitle(s) ?? "",
          eyesResults?.eyesSymmetryEnum.getTitle(s) ?? "",
          eyesResults?.eyesSymmetryEnum
                  .getColor(eyesResults.eyesSymmetryEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.eyesExpressivenessImage,
          "${eyesResults?.eyesExpressivenessAPI}/10",
          eyesResults?.eyesExpressiveness.getTitle(s) ?? "",
          eyesResults?.eyesExpressivenessEnum.getTitle(s) ?? "",
          eyesResults?.eyesExpressivenessEnum
                  .getColor(eyesResults.eyesExpressivenessEnum) ??
              ColorGroupEnum.black),
    ], showFitnessCardResultsModelList: [
      createShowYourResultsModel(
          ImageTextGroupEnum.fitnessBodyImage,
          "${fitnessResults?.fitnessBodyAPI}/10",
          fitnessResults?.fitnessBody.getTitle(s) ?? "",
          fitnessResults?.fitnessBodyEnum.getTitle(s) ?? "",
          fitnessResults?.fitnessBodyEnum
                  .getColor(fitnessResults.fitnessBodyEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.fitnessMuscleImage,
          "${fitnessResults?.fitnessMuscleAPI}/10",
          fitnessResults?.fitnessMuscle.getTitle(s) ?? "",
          fitnessResults?.fitnessMuscleEnum.getTitle(s) ?? "",
          fitnessResults?.fitnessMuscleEnum
                  .getColor(fitnessResults.fitnessMuscleEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.fitnessStaminaImage,
          "${fitnessResults?.fitnessStaminaAPI}/10",
          fitnessResults?.fitnessStamina.getTitle(s) ?? "",
          fitnessResults?.fitnessStaminaEnum.getTitle(s) ?? "",
          fitnessResults?.fitnessStaminaEnum
                  .getColor(fitnessResults.fitnessStaminaEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.fitnessFlexibilityImage,
          "${fitnessResults?.fitnessFlexibilityAPI}/10",
          fitnessResults?.fitnessFlexibility.getTitle(s) ?? "",
          fitnessResults?.fitnessFlexibilityEnum.getTitle(s) ?? "",
          fitnessResults?.fitnessFlexibilityEnum
                  .getColor(fitnessResults.fitnessFlexibilityEnum) ??
              ColorGroupEnum.black),
      createShowYourResultsModel(
          ImageTextGroupEnum.fitnessStrengthImage,
          "${fitnessResults?.fitnessStrengthAPI}/10",
          fitnessResults?.fitnessStrength.getTitle(s) ?? "",
          fitnessResults?.fitnessStrengthEnum.getTitle(s) ?? "",
          fitnessResults?.fitnessStrengthEnum
                  .getColor(fitnessResults.fitnessStrengthEnum) ??
              ColorGroupEnum.black),
    ]);

    setState(currentState.copyWith(
        cardShowYourResultsModel: cardShowYourResultsModel));
  }

  Future<void> addDefaultHistoryPhoto(BuildContext context) async {
    final S s = S.of(context);
    final historyData = await storage.read(session.historyList);
    final model = HistoryModel(
        isPhotoDeepScan: false,
        photo: currentState.frontIconPath ?? "",
        titleValue: currentState.cardSaveYourResultsModel?.saveMainResultsModel
                .personalEstimate ??
            0.0,
        subtitle:
            "${currentState.cardSaveYourResultsModel?.saveMainResultsModel.personalEstimateInWorldEnum.getTitle(s)}");
    if (historyData == null) {
      await storage.write(session.historyList, [model]);
    } else {
      List<HistoryModel> historyList;

      if (historyData is List<dynamic>) {
        if (historyData.isNotEmpty &&
            historyData.first is Map<String, dynamic>) {
          historyList = historyData
              .map(
                  (item) => HistoryModel.fromJson(item as Map<String, dynamic>))
              .toList();
          historyList.add(model);
          await storage.write(session.historyList, historyList);
        } else if (historyData.isNotEmpty &&
            historyData.first is HistoryModel) {
          historyList = historyData.cast<HistoryModel>();
          historyList.add(model);
          await storage.write(session.historyList, historyList);
        }
      }
    }
  }

  Future<void> saveImageToCacheForSharing(
      ScreenshotController screenShotController) async {
    setState(currentState.copyWith(isTakingPhoto: true));
    try {
      if (await storage.read(session.saveIconShare) != null) {
        await Future.delayed(const Duration(milliseconds: 3000));
        final imgBytes = await screenShotController.capture(pixelRatio: 2);
        final Directory appDir = await getApplicationDocumentsDirectory();
        final String appDirPath = appDir.path;
        final String imagePath =
            '$appDirPath/${DateTime.now().millisecondsSinceEpoch}.png';

        final File savedImage =
            await File(imagePath).writeAsBytes(imgBytes ?? []);
        await storage.write(session.saveIconShare, savedImage.path);
      }
    } catch (e) {
      throw Exception("Error save image: $e");
    }

    setState(currentState.copyWith(isTakingPhoto: false));
  }

  Future<Size> getImageDimensions(String frontIconPath) async {
    final file = File(frontIconPath);
    final imageData = await file.readAsBytes();
    final image = img.decodeImage(imageData);
    return Size(
        (image?.width ?? 0).toDouble(), (image?.height ?? 0).toDouble());
  }
}

class ScreenState {
  final bool loading;
  final bool checkUseMethodsPhoto;
  final bool useBlurBlock;
  final ChangeAppearanceModel? changeAppearanceModel;
  final String? frontIconPath;
  final CardSaveYourResultsModel? cardSaveYourResultsModel;
  final CardShowYourResultsModel? cardShowYourResultsModel;
  final bool isTakingPhoto;
  final DefaultAnalysisModel? defaultAnalysisModel;
  final Size frontIconSize;

  ScreenState({
    this.loading = false,
    this.checkUseMethodsPhoto = false,
    this.useBlurBlock = true,
    this.changeAppearanceModel,
    this.frontIconPath,
    this.cardSaveYourResultsModel,
    this.cardShowYourResultsModel,
    this.isTakingPhoto = false,
    this.defaultAnalysisModel,
    this.frontIconSize = const Size(0.0, 0.0),
  });

  ScreenState copyWith({
    bool? loading,
    bool? checkUseMethodsPhoto,
    bool? useBlurBlock,
    ChangeAppearanceModel? changeAppearanceModel,
    String? frontIconPath,
    CardSaveYourResultsModel? cardSaveYourResultsModel,
    CardShowYourResultsModel? cardShowYourResultsModel,
    bool? isTakingPhoto,
    DefaultAnalysisModel? defaultAnalysisModel,
    Size? frontIconSize,
  }) {
    return ScreenState(
      loading: loading ?? this.loading,
      checkUseMethodsPhoto: checkUseMethodsPhoto ?? this.checkUseMethodsPhoto,
      useBlurBlock: useBlurBlock ?? this.useBlurBlock,
      changeAppearanceModel:
          changeAppearanceModel ?? this.changeAppearanceModel,
      frontIconPath: frontIconPath ?? this.frontIconPath,
      cardSaveYourResultsModel:
          cardSaveYourResultsModel ?? this.cardSaveYourResultsModel,
      cardShowYourResultsModel:
          cardShowYourResultsModel ?? this.cardShowYourResultsModel,
      isTakingPhoto: isTakingPhoto ?? this.isTakingPhoto,
      defaultAnalysisModel: defaultAnalysisModel ?? this.defaultAnalysisModel,
      frontIconSize: frontIconSize ?? this.frontIconSize,
    );
  }
}
