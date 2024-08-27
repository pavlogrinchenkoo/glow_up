import 'dart:math';
import 'package:camera/camera.dart';
import 'package:glow_up/screens/onboarding_page/bloc.dart';
import 'package:glow_up/widgets/custom_boxeh.dart';
import 'package:flutter/material.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_circular_progress_indicator.dart';

class OnboardingTakePhoto extends StatefulWidget {
  final OnboardingBloc bloc;
  final S s;
  final Future<void>? initializeControllerFuture;
  final CameraController? cameraController;
  final XFile? capturedImage;
  final VoidCallback nextPage;
  final bool frontSelfie;
  final PageController pageController;
  final BuildContext contextStartPhoto;

  const OnboardingTakePhoto({
    super.key,
    required this.s,
    required this.bloc,
    required this.nextPage,
    this.initializeControllerFuture,
    this.cameraController,
    this.capturedImage,
    required this.frontSelfie,
    required this.pageController,
    required this.contextStartPhoto,
  });

  @override
  State<OnboardingTakePhoto> createState() => _OnboardingTakePhotoState();
}

class _OnboardingTakePhotoState extends State<OnboardingTakePhoto> {
  @override
  void initState() {
    super.initState();
    widget.bloc.initializeCamera();
  }

  @override
  void dispose() {
    super.dispose();
    widget.bloc.disposeCamera();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double topOffset = screenHeight / 1.4;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: Sizes.s30),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              widget.frontSelfie
                  ? widget.s.onboardingHeaderTakeFrontSelfie
                  : widget.s.onboardingHeaderTakeSideSelfie,
              style: BS.tex24.apply(color: BC.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight / 9),
            child: SizedBox(
              width: screenWidth,
              height:
                  screenHeight < 740 ? screenHeight / 1.8 : screenHeight / 1.65,
              child: FutureBuilder<void>(
                future: widget.initializeControllerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (widget.capturedImage == null) {
                      return Transform.scale(
                        scale: screenHeight < 740
                            ? widget.cameraController!.value.aspectRatio / 1.1
                            : widget.cameraController!.value.aspectRatio / 1.3,
                        child: AspectRatio(
                          aspectRatio:
                              widget.cameraController!.value.aspectRatio,
                          child: CameraPreview(widget.cameraController!),
                        ),
                      );
                    } else {
                      if (widget.capturedImage!.path.isEmpty) {
                        return Transform.scale(
                          scale: screenHeight < 740
                              ? widget.cameraController!.value.aspectRatio / 1.1
                              : widget.cameraController!.value.aspectRatio /
                                  1.3,
                          child: AspectRatio(
                            aspectRatio:
                                widget.cameraController!.value.aspectRatio,
                            child: CameraPreview(widget.cameraController!),
                          ),
                        );
                      }
                      return Center(
                          child: AppCircularProgressIndicator(color: BC.white));
                    }
                  } else {
                    return Center(
                        child: AppCircularProgressIndicator(color: BC.white));
                  }
                },
              ),
            ),
          ),
        ),
        if (screenWidth < 500)
          CustomBokeh(
            size: screenWidth / 1.5,
            scaleY: 0.7,
            scaleX: 0.4,
            alignment: Alignment.bottomCenter,
            transform: Offset(Sizes.scale, screenHeight / 14),
            shape: BoxShape.rectangle,
            angleInRadians: pi / Sizes.s2,
            blurWhiteHard: true,
          ),
        Padding(
          padding: EdgeInsets.only(top: topOffset * 1.0),
          child: Center(
              child: IconButton(
                  onPressed: () {
                    widget.bloc.capturePhoto(widget.frontSelfie, context,
                        widget.pageController, widget.contextStartPhoto);
                    widget.nextPage();
                  },
                  icon: Assets.images.photoButton.svg())),
        ),
      ],
    );
  }
}
