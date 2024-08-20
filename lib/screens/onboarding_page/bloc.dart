import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:glow_up/api/default_analysis/dto.dart';
import 'package:glow_up/api/load_data_point/dto.dart';
import 'package:glow_up/api/requests.dart';
import 'package:glow_up/api/show_your_results/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/routers/routes.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/analytics_amplitude.dart';
import 'package:glow_up/utils/notifi_service.dart';
import 'package:glow_up/utils/session.dart';
import 'package:glow_up/utils/bloc_base.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:open_settings_plus/open_settings_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as path;

class OnboardingBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  OnboardingBloc() {
    setState(ScreenState());
  }

  final storage = GetStorage();
  final session = Session();

  Future<void> initializeCamera() async {
    try {
      final cameras = await availableCameras();
      final frontCamera = cameras.firstWhere(
          (camera) => camera.lensDirection == CameraLensDirection.front);

      final cameraController = CameraController(
        frontCamera,
        ResolutionPreset.max,
        enableAudio: false,
      );

      final initializeControllerFuture = cameraController.initialize();
      setState(currentState.copyWith(
          cameraController: cameraController,
          initializeControllerFuture: initializeControllerFuture));
    } catch (e) {
      log("Error initialize camera: $e");
    }
  }

  Future<void> capturePhoto(bool frontSelfie, BuildContext context,
      PageController pageController, BuildContext contextStartPhoto) async {
    try {
      setState(currentState.copyWith(showCircularIndicator: true));
      await currentState.initializeControllerFuture;
      if (currentState.cameraController?.value.flashMode != FlashMode.off) {
        await currentState.cameraController?.setFlashMode(FlashMode.off);
      }
      final image = await currentState.cameraController?.takePicture();

      if (image != null) {
        final Uint8List bytes = await image.readAsBytes();
        img.Image originalImage = img.decodeImage(bytes)!;

        final lensDirection =
            currentState.cameraController!.description.lensDirection;
        final cameraOrientation = await getCameraOrientationFromDevice();
        final imageOrientation =
            getImageOrientation(lensDirection, cameraOrientation);
        if (imageOrientation == ImageOrientation.verticalUp) {
          if (frontSelfie) {
            final file = await changeImageSize(image);
            final check = await checkFormatImage(file, frontSelfie);
            if (check) {
              final pathIcon =
                  await saveImageToCacheAndStorePath(XFile(file.path));
              setState(currentState.copyWith(
                  frontIconPath: pathIcon, showCircularIndicator: false));
            } else {
              nextPage(context, pageController, back: true);
              showDialogBetterQualityImage(contextStartPhoto);
            }
          } else {
            setState(currentState.copyWith(
                sideIcon: image, showCircularIndicator: false));
          }
        } else {
          img.Image rotatedImage =
              getPhotoWithNeedOrientation(imageOrientation, originalImage);

          final tempDir = await getTemporaryDirectory();
          final fileName = path.basename(image.path);
          final newPath = path.join(tempDir.path, fileName);
          final newImageFile = File(newPath);
          await newImageFile.writeAsBytes(img.encodeJpg(rotatedImage));

          final finalImage = XFile(newImageFile.path);

          if (frontSelfie) {
            final file = await changeImageSize(finalImage);
            final check = await checkFormatImage(file, frontSelfie);
            if (check) {
              final pathIcon =
                  await saveImageToCacheAndStorePath(XFile(file.path));
              setState(currentState.copyWith(
                  frontIconPath: pathIcon, showCircularIndicator: false));
            } else {
              nextPage(context, pageController, back: true);
              showDialogBetterQualityImage(contextStartPhoto);
            }
          } else {
            setState(currentState.copyWith(
                sideIcon: finalImage, showCircularIndicator: false));
          }
        }
      }
    } catch (e) {
      log("Error getting picture: $e");
    }
  }

  img.Image getPhotoWithNeedOrientation(
      ImageOrientation imageOrientation, img.Image originalImage) {
    switch (imageOrientation) {
      case ImageOrientation.verticalRight:
        return img.copyRotate(originalImage, angle: -90);

      case ImageOrientation.horizontal:
        return img.copyRotate(originalImage, angle: 180);

      case ImageOrientation.verticalUp:
        return originalImage;

      case ImageOrientation.verticalLeft:
        return img.copyRotate(originalImage, angle: 90);
    }
  }

  ImageOrientation getImageOrientation(
      CameraLensDirection lensDirection, CameraOrientation orientation) {
    switch (lensDirection) {
      case CameraLensDirection.front:
        switch (orientation) {
          case CameraOrientation.verticalLeft:
            return ImageOrientation.verticalLeft;
          case CameraOrientation.verticalRight:
            return ImageOrientation.verticalRight;
          case CameraOrientation.horizontal:
            return ImageOrientation.horizontal;
          case CameraOrientation.upsideDown:
            return ImageOrientation.verticalUp;
        }

      case CameraLensDirection.back:
        switch (orientation) {
          case CameraOrientation.verticalLeft:
            return ImageOrientation.verticalLeft;
          case CameraOrientation.verticalRight:
            return ImageOrientation.verticalRight;
          case CameraOrientation.horizontal:
            return ImageOrientation.horizontal;
          case CameraOrientation.upsideDown:
            return ImageOrientation.verticalUp;
        }

      case CameraLensDirection.external:
        switch (orientation) {
          case CameraOrientation.verticalLeft:
            return ImageOrientation.verticalLeft;
          case CameraOrientation.verticalRight:
            return ImageOrientation.verticalRight;
          case CameraOrientation.horizontal:
            return ImageOrientation.horizontal;
          case CameraOrientation.upsideDown:
            return ImageOrientation.verticalUp;
        }

      default:
        return ImageOrientation.horizontal;
    }
  }

  Future<CameraOrientation> getCameraOrientationFromDevice() async {
    Completer<CameraOrientation> completer = Completer();
    CameraOrientation? lastOrientation;

    accelerometerEventStream().listen((AccelerometerEvent event) {
      CameraOrientation orientation;
      if (event.x.abs() > event.y.abs()) {
        if (event.x > 0) {
          orientation = CameraOrientation.verticalLeft;
        } else {
          orientation = CameraOrientation.verticalRight;
        }
      } else {
        if (event.y > 0) {
          orientation = CameraOrientation.upsideDown;
        } else {
          orientation = CameraOrientation.horizontal;
        }
      }

      if (lastOrientation != orientation) {
        lastOrientation = orientation;
        if (!completer.isCompleted) {
          completer.complete(orientation);
        }
      }
    }).onDone(() {
      if (!completer.isCompleted) {
        completer.complete(CameraOrientation.horizontal);
      }
    });

    return completer.future;
  }

  void disposeCamera() {
    setState(currentState.copyWith(
        cameraController: null, initializeControllerFuture: null));
  }

  Future<void> activateUseNotification(BuildContext context) async {
    final S s = S.of(context);
    await NotificationService().initNotification();
    await NotificationService().scheduleOnboardingNotifications(true, s);
  }

  void showPrivacyPolicyAndTermOfUse() async {
    const url = 'https://www.moontalk.app/privacy';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw "Could not launch $url";
    }
  }

  void nextPage(
    BuildContext context,
    PageController controller, {
    bool jumpToReview = false,
    bool back = false,
    bool frontSelfie = true,
  }) async {
    final Map<int, Function> actions = {
      2: () async => showRateApp(),
      3: () async => activateUseNotification(context),
      4: () async {
        bool res = await checkPermissionCamera(context);
        if (!res) {
          return false;
        }
      },
      7: () async {
        bool res = await checkPermissionCamera(context);
        if (!res) {
          return false;
        }
      },
    };

    if (actions.containsKey(currentState.index)) {
      var result = await actions[currentState.index]?.call();
      if (result == false) {
        return;
      }
    }

    if (back) {
      controller.animateToPage(
        currentState.index - 2,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else if (jumpToReview) {
      int indexJump = frontSelfie ? 6 : 9;
      frontSelfie
          ? controller.jumpToPage(indexJump)
          : controller.jumpToPage(indexJump);
      setState(currentState.copyWith(index: indexJump));
    } else {
      controller.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
      setState(currentState.copyWith(index: controller.page!.toInt() + 1));
    }
  }

  Future<void> showRateApp() async {
    final InAppReview inAppReview = InAppReview.instance;
    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    }
  }

  Future<void> getGalleryPhoto(
      BuildContext context, PageController controller, bool frontSelfie) async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile;
    try {
      if (Platform.isAndroid) {
        final androidInfo = await DeviceInfoPlugin().androidInfo;
        late final Map<Permission, PermissionStatus> status;

        if (androidInfo.version.sdkInt <= 32) {
          status = await [Permission.storage].request();
        } else {
          status = await [Permission.photos].request();
        }
        var allAccept = true;
        status.forEach((permission, status) {
          if (status != PermissionStatus.granted) {
            allAccept = false;
          }
        });
        if (!allAccept) {
          showDialogAccessPermission(context);
          return;
        }
      } else if (Platform.isIOS) {
        bool checkPermIOS = await checkPermissionGallery(context);
        if (!checkPermIOS) {
          return;
        }
      }
      pickedFile = await picker.pickImage(
        source: ImageSource.gallery,
        requestFullMetadata: false,
      );
      if (pickedFile == null) {
        return;
      }
      final file = await changeImageSize(pickedFile);
      final check = await checkFormatImage(file, frontSelfie);
      if (check) {
        if (frontSelfie) {
          final pathIcon = await saveImageToCacheAndStorePath(XFile(file.path));
          setState(currentState.copyWith(
              frontIconPath: pathIcon, index: controller.page!.toInt() + 2));
        } else {
          setState(currentState.copyWith(
              sideIcon: pickedFile, index: controller.page!.toInt() + 2));
        }
        nextPage(context, controller,
            jumpToReview: true, frontSelfie: frontSelfie);
      } else {
        showDialogBetterQualityImage(context);
      }
    } catch (e) {
      log("Error get image $e");
      showDialogBetterQualityImage(context);
    }
  }

  Future<File> changeImageSize(XFile pickedFile) async {
    final File imageFile = File(pickedFile.path);
    final isHEIC = imageFile.path.toLowerCase().endsWith('heic') ||
        imageFile.path.toLowerCase().endsWith('heif');

    File processedFile = imageFile;

    if (isHEIC) {
      final tmpDir = (await getTemporaryDirectory()).path;
      final target = '$tmpDir/${DateTime.now().millisecondsSinceEpoch}.jpg';
      final result = await FlutterImageCompress.compressAndGetFile(
        imageFile.path,
        target,
        format: CompressFormat.jpeg,
        quality: 90,
      );

      if (result != null) {
        processedFile = File(result.path);
      }
    }

    img.Image? image = img.decodeImage(processedFile.readAsBytesSync());
    if (image == null) return File("");

    int newWidth = image.width;
    int newHeight = image.height;
    double aspectRatio = image.width / image.height;

    if (newWidth < 48 || newHeight < 48) {
      if (newWidth < 48) {
        newWidth = 48;
        newHeight = (48 / aspectRatio).round();
      }
      if (newHeight < 48) {
        newHeight = 48;
        newWidth = (48 * aspectRatio).round();
      }
    }

    if (newWidth > 4096 || newHeight > 4096) {
      if (newWidth > 4096) {
        newWidth = 4096;
        newHeight = (4096 / aspectRatio).round();
      }
      if (newHeight > 4096) {
        newHeight = 4096;
        newWidth = (4096 * aspectRatio).round();
      }
    }

    final sqSize = math.max(newWidth, newHeight);
    image = img.copyResizeCropSquare(image, size: sqSize);
    processedFile.writeAsBytesSync(img.encodeJpg(image));

    int fileSize = await processedFile.length();
    if (fileSize > 2 * 1024 * 1024) {
      final tmpDir = (await getTemporaryDirectory()).path;
      final target =
          '$tmpDir/${DateTime.now().millisecondsSinceEpoch}_compressed.jpeg';
      final result = await FlutterImageCompress.compressAndGetFile(
        processedFile.path,
        target,
        quality: 85,
      );

      if (result != null) {
        processedFile = File(result.path);
      }
    }

    return processedFile;
  }

  Future<bool> checkFormatImage(File file, bool frontSelfie) async {
    if (frontSelfie) {
      try {
        DefaultAnalysisModel defaultAnalysisModel =
            await Requests().sendPostDefaultWithFileRequest(file);
        return defaultAnalysisModel.face_rectangle == null &&
                defaultAnalysisModel.landmark == null &&
                defaultAnalysisModel.attributes == null
            ? false
            : true;
      } catch (e) {
        return false;
      }
    }
    return true;
  }

  void showDialogBetterQualityImage(BuildContext context) {
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
                  left: Sizes.s40,
                  right: Sizes.s40,
                  top: Sizes.s70,
                  bottom: Sizes.s50,
                ),
                child: Text(
                  s.showDialogChangeIcon,
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
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void showDialogAccessPermission(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
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
              SizedBox(
                height: height < 840 ? height / 3 : height / 3.2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: Sizes.s40,
                        right: Sizes.s40,
                        top: Sizes.s70,
                        bottom: Sizes.s30,
                      ),
                      child: Text(
                        s.showDialogAccessPermissionCameraOrPhoto,
                        style: BS.showDialogText,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: Sizes.s25,
                        right: Sizes.s25,
                      ),
                      child: CustomButton(
                        s.goToSettings,
                        onTap: () => openAppSettings(context),
                        borderRadius: AppRadius.r18,
                        padding: Sizes.s25,
                        colorButton: BC.navyGrey,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void openAppSettings(BuildContext context) {
    OpenSettingsPlusAndroid settingsAndroid = const OpenSettingsPlusAndroid();
    OpenSettingsPlusIOS settingsIOS = const OpenSettingsPlusIOS();
    Platform.isIOS
        ? settingsIOS.appSettings()
        : settingsAndroid.applicationDetails();
  }

  Future<bool> checkPermissionCamera(BuildContext context) async {
    final status = await [Permission.camera].request();
    if (status[Permission.camera] != PermissionStatus.granted) {
      showDialogAccessPermission(context);
      return false;
    }
    return true;
  }

  Future<bool> checkPermissionGallery(BuildContext context) async {
    final status = await [Permission.storage].request();
    if (status[Permission.storage] != PermissionStatus.granted) {
      showDialogAccessPermission(context);
      return false;
    }
    return true;
  }

  void initialLoadData(BuildContext context, S s) async {
    setState(currentState.copyWith(
      loadDataInfoStatus: [
        LoadDataPoint(name: s.facialGeometry, isActive: false),
        LoadDataPoint(name: s.skinTexture, isActive: false),
        LoadDataPoint(name: s.symmetryDetection, isActive: false),
        LoadDataPoint(name: s.skinHealth, isActive: false),
        LoadDataPoint(name: s.agingMarker, isActive: false),
        LoadDataPoint(name: s.jawlineCheekbone, isActive: false),
        LoadDataPoint(name: s.attractivenessIndex, isActive: false),
        LoadDataPoint(name: s.beautyProfile, isActive: false),
      ],
    ));

    await Future.delayed(const Duration(milliseconds: 100));
    onStartAnimation(context, s);
  }

  void onStartAnimation(BuildContext context, S s) {
    currentState.timer =
        Timer.periodic(const Duration(milliseconds: 100), (Timer timer) async {
      var valueProgress = currentState.valueProgress;
      Map<int, double> thresholds = {
        1: 0.1,
        2: 0.2,
        3: 0.4,
        4: 0.5,
        5: 0.7,
        6: 0.8,
        7: 0.9,
        8: 0.95,
      };
      thresholds.forEach((index, threshold) {
        if (valueProgress > threshold) {
          currentState.loadDataInfoStatus[index - 1].isActive = true;
        }
      });

      if (valueProgress < 1) {
        setState(currentState.copyWith(valueProgress: valueProgress += 0.02));
      } else {
        currentState.timer?.cancel();
        setState(currentState.copyWith(
            valueProgress: 1, isLastText: true, timer: currentState.timer));
        if (await storage.read(session.isOnboardingShow) == null) {
          AnalyticsAmplitude().logOnboardingFullFinish();
        }
        await storage.write(session.isOnboardingShow, true);
        await storage.write(session.addHistoryItem, true);
        await NotificationService().scheduleOnboardingNotifications(false, s);
        await Future.delayed(const Duration(seconds: 1));
        await setLimitAnalyzePhoto();
        context.router.push(ResultsRoute(activateSheet: false));
      }
    });
  }

  void disposeIndicator() {
    currentState.timer?.cancel();
    setState(currentState.copyWith(timer: currentState.timer));
  }

  Future<String> saveImageToCacheAndStorePath(XFile image) async {
    final Directory appDir = await getApplicationDocumentsDirectory();
    final String appDirPath = appDir.path;
    final String fileExtension = image.path.split('.').last;
    final String imagePath =
        '$appDirPath/${DateTime.now().millisecondsSinceEpoch}.$fileExtension';

    final File savedImage = await File(image.path).copy(imagePath);

    await storage.write(session.frontIconPath, savedImage.path);

    final String? storedImagePath = storage.read(session.frontIconPath);
    if (storedImagePath != null && File(storedImagePath).existsSync()) {
      log('Image saved successfully at $storedImagePath');
      return savedImage.path;
    } else {
      log('Failed to save image');
      return "";
    }
  }

  Future<void> setLimitAnalyzePhoto() async {
    final currentDate = DateTime.now();
    final lastUpdateDateStr = await storage.read(session.isLastUpdateDate);
    final isScannedSevenDays =
        await storage.read(session.isUseScannedSevenDays);

    if (lastUpdateDateStr == null || isScannedSevenDays == null) {
      await storage.write(
          session.isLastUpdateDate, currentDate.toIso8601String());
      await storage.write(session.isUseScannedSevenDays, false);
    }
  }

  void cleanIconPath({bool isFrontIcon = true}) {
    isFrontIcon
        ? setState(currentState.copyWith(frontIconPath: ""))
        : setState(currentState.copyWith(sideIcon: XFile("")));
  }
}

class ScreenState {
  final int index;
  String? frontIconPath;
  final XFile? sideIcon;
  final CameraController? cameraController;
  final Future<void>? initializeControllerFuture;
  final double valueProgress;
  final bool isLastText;
  final List<LoadDataPoint> loadDataInfoStatus;
  Timer? timer;
  final bool showCircularIndicator;

  ScreenState({
    this.frontIconPath,
    this.sideIcon,
    this.index = 0,
    this.cameraController,
    this.initializeControllerFuture,
    this.valueProgress = 0,
    this.isLastText = false,
    this.loadDataInfoStatus = const [],
    this.timer,
    this.showCircularIndicator = false,
  });

  ScreenState copyWith({
    int? index,
    String? frontIconPath,
    XFile? sideIcon,
    CameraController? cameraController,
    Future<void>? initializeControllerFuture,
    double? valueProgress,
    bool? isLastText,
    List<LoadDataPoint>? loadDataInfoStatus,
    Timer? timer,
    bool? showCircularIndicator,
  }) {
    return ScreenState(
      index: index ?? this.index,
      frontIconPath: frontIconPath ?? this.frontIconPath,
      sideIcon: sideIcon ?? this.sideIcon,
      cameraController: cameraController ?? this.cameraController,
      initializeControllerFuture:
          initializeControllerFuture ?? this.initializeControllerFuture,
      valueProgress: valueProgress ?? this.valueProgress,
      isLastText: isLastText ?? this.isLastText,
      loadDataInfoStatus: loadDataInfoStatus ?? this.loadDataInfoStatus,
      timer: timer ?? this.timer,
      showCircularIndicator:
          showCircularIndicator ?? this.showCircularIndicator,
    );
  }
}
