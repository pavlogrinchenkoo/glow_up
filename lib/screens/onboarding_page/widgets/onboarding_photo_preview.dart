import 'dart:io';
import 'dart:math';

import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_boxeh.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:glow_up/widgets/custom_circular_progress_indicator.dart';

class OnboardingPhotoPreview extends StatelessWidget {
  final VoidCallback createNextPhoto;
  final VoidCallback backAgainTakePhoto;
  final S s;
  final String? frontIconPath;
  final bool frontSelfie;
  final bool showCircularIndicator;

  const OnboardingPhotoPreview({
    super.key,
    required this.createNextPhoto,
    required this.backAgainTakePhoto,
    required this.s,
    this.frontIconPath,
    required this.frontSelfie,
    required this.showCircularIndicator,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double topOffset = screenHeight / 1.4;
    return showCircularIndicator
        ? const Center(child: AppCircularProgressIndicator())
        : Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: Sizes.s30),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    frontSelfie
                        ? s.onboardingConfirmFrontSelfie
                        : s.onboardingConfirmSideSelfie,
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
                      borderRadius: BorderRadius.circular(AppRadius.r20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r20),
                      child: frontIconPath != null
                          ? FutureBuilder(
                              future: Future.delayed(
                                  const Duration(milliseconds: 300)),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  return Image.file(
                                    File(frontIconPath ?? ""),
                                    width: screenHeight / 2,
                                    height: screenHeight / 1.9,
                                    fit: BoxFit.cover,
                                  );
                                } else {
                                  return SizedBox(
                                    width: screenHeight / 2,
                                    height: screenHeight / 1.9,
                                    child: const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                              },
                            )
                          : SizedBox(
                              width: screenHeight / 2,
                              height: screenHeight / 1.9,
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
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
                      padding:
                          const EdgeInsets.symmetric(horizontal: Sizes.s30),
                      child: Text(
                        s.onboardingUploadHighQuality,
                        style: BS.tex14.apply(color: BC.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Space.h20,
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: Sizes.s25),
                      child: Column(
                        children: [
                          CustomButton(
                            s.onboardingContinueButtonText,
                            onTap: createNextPhoto,
                            outLine: true,
                            borderColor: BC.salad,
                            colorButton: BC.salad,
                            borderRadius: AppRadius.r18,
                            padding: Sizes.s23,
                          ),
                          Space.h8,
                          CustomButton(
                            s.onboardingRetakeButtonText,
                            onTap: backAgainTakePhoto,
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
