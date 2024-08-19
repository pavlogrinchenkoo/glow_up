import 'dart:io';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:glow_up/api/deep_results/dto.dart';
import 'package:glow_up/api/history/dto.dart';
import 'package:glow_up/api/pro_analysis/dto.dart';
import 'package:glow_up/api/requests.dart';
import 'package:glow_up/routers/routes.dart';
import 'package:glow_up/utils/session.dart';
import 'package:glow_up/utils/bloc_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image/image.dart' as image_pkg;
import 'package:path_provider/path_provider.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/services.dart';

class DeepScanningResultBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  DeepScanningResultBloc() {
    setState(ScreenState());
  }

  final storage = GetStorage();
  final session = Session();

  Future<void> init() async {
    final frontIconPath = await storage.read(session.frontIconPath);
    final frontIconDeepPath = await convertAndSaveToCache(XFile(frontIconPath));
    final random = Random();
    final randomMelaninConcentration = random.nextInt(101);
    final proAnalysisModel =
        await Requests().sendPostProRequest(frontIconDeepPath);
    await getXFileImages(proAnalysisModel);
    setState(currentState.copyWith(
        proAnalysisModel: proAnalysisModel,
        frontIconDeepPath: frontIconDeepPath,
        randomMelaninConcentration: randomMelaninConcentration));
    if (await storage.read(session.isUserSubscribeDeepScan) != null) {
      if (await storage.read(session.isUserSubscribeDeepScan) == true) {
        await addDeepHistoryPhoto();
      }
    }
  }

  Future<void> getXFileImages(
    ProAnalysisModel proAnalysisModel,
  ) async {
    final textureEnhancedBlackheads = await convertBase64ToXFile(
        proAnalysisModel.face_maps?.texture_enhanced_blackheads ?? "");
    final textureEnhancedPores = await convertBase64ToXFile(
        proAnalysisModel.face_maps?.texture_enhanced_pores ?? "");
    final brownArea = await convertBase64ToXFile(
        proAnalysisModel.face_maps?.brown_area ?? "");
    final roiOutlineMap = await convertBase64ToXFile(
        proAnalysisModel.face_maps?.roi_outline_map ?? "");
    final redArea =
        await convertBase64ToXFile(proAnalysisModel.face_maps?.red_area ?? "");
    final textureEnhancedLines = await convertBase64ToXFile(
        proAnalysisModel.face_maps?.texture_enhanced_lines ?? "");
    setState(currentState.copyWith(
      textureEnhancedBlackheads: textureEnhancedBlackheads,
      textureEnhancedPores: textureEnhancedPores,
      brownArea: brownArea,
      roiOutlineMap: roiOutlineMap,
      redArea: redArea,
      textureEnhancedLines: textureEnhancedLines,
    ));
  }

  Future<void> addDeepHistoryPhoto() async {
    final historyData = await storage.read(session.historyList);
    final titleValue = await storage.read(session.futureDeepTitleHistory);
    final subTitleValue = await storage.read(session.futureDeepSubTitleHistory);
    final model = HistoryModel(
        isPhotoDeepScan: true,
        photo: currentState.frontIconDeepPath ?? "",
        titleValue: titleValue,
        subtitle: subTitleValue ?? "");
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

  void changeValueProgress(
      double valueProgress, DeepGetNumberResultsEnum depGetNumberResultsEnum) {
    final Map<int, double> progressValues = {
      1: currentState.valueProgressFirst,
      2: currentState.valueProgressSecond,
      3: currentState.valueProgressThird,
      4: currentState.valueProgressFourth,
      5: currentState.valueProgressFifth,
      6: currentState.valueProgressSixth,
      7: currentState.valueProgressSeventh,
    };

    if (valueProgress >= 0.95) {
      progressValues[depGetNumberResultsEnum.getNumber()] = 0.95;
    } else if (valueProgress <= 0.05) {
      progressValues[depGetNumberResultsEnum.getNumber()] = 0.05;
    } else {
      progressValues[depGetNumberResultsEnum.getNumber()] = valueProgress;
    }

    setState(currentState.copyWith(
      valueProgressFirst: progressValues[1],
      valueProgressSecond: progressValues[2],
      valueProgressThird: progressValues[3],
      valueProgressFourth: progressValues[4],
      valueProgressFifth: progressValues[5],
      valueProgressSixth: progressValues[6],
      valueProgressSeventh: progressValues[7],
    ));
  }

  void toBack(BuildContext context) {
    context.router.back();
  }

  void toMenu(BuildContext context) {
    context.router.push(const MenuRoute());
  }

  Future<String> convertAndSaveToCache(XFile pickedFile) async {
    final List<String> allowedFormats = [
      'jpg',
      'jpeg',
      'png',
      'gif',
      'bmp',
      'webp',
      'heif',
      'heic'
    ];

    final String fileFormat = pickedFile.path.split('.').last.toLowerCase();

    if (!allowedFormats.contains(fileFormat)) {
      throw UnsupportedError('Unsupported image format');
    }

    final image_pkg.Image? image =
        image_pkg.decodeImage(await pickedFile.readAsBytes());
    if (image == null) {
      throw Exception('Unable to decode image');
    }

    final List<int> jpgBytes = image_pkg.encodeJpg(image);

    final Directory appDir = await getApplicationDocumentsDirectory();
    final String appDirPath = appDir.path;
    final String imagePath =
        '$appDirPath/${DateTime.now().millisecondsSinceEpoch}.jpg';

    final File outputFile = File(imagePath);
    await outputFile.writeAsBytes(jpgBytes);

    await storage.write(session.frontIconDeepPath, outputFile.path);

    final String? storedImagePath = storage.read(session.frontIconDeepPath);
    if (storedImagePath != null && File(storedImagePath).existsSync()) {
      Exception('Image for Deep Scan saved successfully at $storedImagePath');
      return outputFile.path;
    } else {
      Exception('Failed to save image');
      return "";
    }
  }

  Future<XFile> convertBase64ToXFile(String base64String) async {
    if (base64String.isEmpty) return XFile("");
    Uint8List imageBytes = base64Decode(base64String);

    final image_pkg.Image? image = image_pkg.decodeImage(imageBytes);
    if (image == null) {
      throw Exception('Unable to decode image');
    }

    final List<int> pngBytes = image_pkg.encodePng(image);
    final Directory tempDir = await getTemporaryDirectory();
    final String tempPath =
        '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.png';

    final File tempFile = File(tempPath);
    await tempFile.writeAsBytes(pngBytes);

    return XFile(tempFile.path);
  }
}

class ScreenState {
  final bool loading;
  final double valueProgressFirst;
  final double valueProgressSecond;
  final double valueProgressThird;
  final double valueProgressFourth;
  final double valueProgressFifth;
  final double valueProgressSixth;
  final double valueProgressSeventh;
  final ProAnalysisModel? proAnalysisModel;
  final String? frontIconDeepPath;
  final XFile? textureEnhancedBlackheads;
  final XFile? textureEnhancedPores;
  final XFile? brownArea;
  final XFile? roiOutlineMap;
  final XFile? redArea;
  final XFile? textureEnhancedLines;
  final int? randomMelaninConcentration;

  ScreenState({
    this.loading = false,
    this.valueProgressFirst = 0.5,
    this.valueProgressSecond = 0.5,
    this.valueProgressThird = 0.5,
    this.valueProgressFourth = 0.5,
    this.valueProgressFifth = 0.5,
    this.valueProgressSixth = 0.5,
    this.valueProgressSeventh = 0.5,
    this.proAnalysisModel,
    this.frontIconDeepPath,
    this.textureEnhancedBlackheads,
    this.textureEnhancedPores,
    this.brownArea,
    this.roiOutlineMap,
    this.redArea,
    this.textureEnhancedLines,
    this.randomMelaninConcentration,
  });

  ScreenState copyWith({
    bool? loading,
    double? valueProgressFirst,
    double? valueProgressSecond,
    double? valueProgressThird,
    double? valueProgressFourth,
    double? valueProgressFifth,
    double? valueProgressSixth,
    double? valueProgressSeventh,
    ProAnalysisModel? proAnalysisModel,
    String? frontIconDeepPath,
    XFile? textureEnhancedBlackheads,
    XFile? textureEnhancedPores,
    XFile? brownArea,
    XFile? roiOutlineMap,
    XFile? redArea,
    XFile? textureEnhancedLines,
    int? randomMelaninConcentration,
  }) {
    return ScreenState(
      loading: loading ?? this.loading,
      valueProgressFirst: valueProgressFirst ?? this.valueProgressFirst,
      valueProgressSecond: valueProgressSecond ?? this.valueProgressSecond,
      valueProgressThird: valueProgressThird ?? this.valueProgressThird,
      valueProgressFourth: valueProgressFourth ?? this.valueProgressFourth,
      valueProgressFifth: valueProgressFifth ?? this.valueProgressFifth,
      valueProgressSixth: valueProgressSixth ?? this.valueProgressSixth,
      valueProgressSeventh: valueProgressSeventh ?? this.valueProgressSeventh,
      proAnalysisModel: proAnalysisModel ?? this.proAnalysisModel,
      frontIconDeepPath: frontIconDeepPath ?? this.frontIconDeepPath,
      textureEnhancedBlackheads:
          textureEnhancedBlackheads ?? this.textureEnhancedBlackheads,
      textureEnhancedPores: textureEnhancedPores ?? this.textureEnhancedPores,
      brownArea: brownArea ?? this.brownArea,
      roiOutlineMap: roiOutlineMap ?? this.roiOutlineMap,
      redArea: redArea ?? this.redArea,
      textureEnhancedLines: textureEnhancedLines ?? this.textureEnhancedLines,
      randomMelaninConcentration:
          randomMelaninConcentration ?? this.randomMelaninConcentration,
    );
  }
}
