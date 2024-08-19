import 'dart:math';

import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_boxeh.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingStartUsePhoto extends StatelessWidget {
  final VoidCallback uploadGalleryPhoto;
  final VoidCallback pushToTakePhoto;
  final bool frontSelfie;
  final S s;

  const OnboardingStartUsePhoto({
    super.key,
    required this.uploadGalleryPhoto,
    required this.pushToTakePhoto,
    required this.s,
    required this.frontSelfie,
  });

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
              frontSelfie
                  ? s.onboardingTakeFrontSelfie
                  : s.onboardingTakeSideSelfie,
              style: BS.tex24.apply(color: BC.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight / 8),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: BC.white,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: frontSelfie
                    ? Assets.images.onboarding.onboardingFrontSelfie.image(
                        width: screenHeight / 2,
                        height: screenHeight / 1.9,
                        fit: BoxFit.cover,
                      )
                    : Assets.images.onboarding.onboardingSideSelfie.image(
                        width: screenHeight / 2,
                        height: screenHeight / 1.9,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
        ),
        CustomBokeh(
          size: screenWidth / 1.5,
          scaleY: 0.7,
          scaleX: 0.4,
          alignment: Alignment.bottomCenter,
          transform: Offset(Sizes.scale, screenHeight / 12),
          shape: BoxShape.rectangle,
          angleInRadians: pi / Sizes.s2,
        ),
        Padding(
          padding: EdgeInsets.only(top: topOffset - Sizes.s30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s30),
                child: Text(
                  s.onboardingUploadHighQuality,
                  style: BS.tex14.apply(color: BC.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Space.h20,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s25),
                child: Column(
                  children: [
                    CustomButton(
                      s.onboardingButtonTakeSelfieButton,
                      onTap: pushToTakePhoto,
                      outLine: true,
                      borderColor: BC.salad,
                      colorButton: BC.salad,
                      borderRadius: AppRadius.r18,
                      padding: Sizes.s23,
                    ),
                    Space.h8,
                    CustomButton(
                      s.onboardingButtonUploadLibraryButton,
                      onTap: uploadGalleryPhoto,
                      outLine: true,
                      borderColor: BC.salad,
                      colorButton: BC.navyGrey,
                      textColor: BC.salad,
                      borderRadius: AppRadius.r18,
                      padding: Sizes.s23,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
