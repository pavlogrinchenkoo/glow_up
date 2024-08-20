import 'dart:math';

import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_boxeh.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingBeforeOrAfter extends StatelessWidget {
  final VoidCallback nextPage;
  final S s;

  const OnboardingBeforeOrAfter({
    super.key,
    required this.nextPage,
    required this.s,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double topOffset =
        screenHeight > 950 ? screenHeight / 1.3 : screenHeight / 1.6;
    return Stack(
      children: [
        Positioned(
          top: 0,
          child: Assets.images.onboarding.onboardingSecond.image(
            width: screenWidth,
            height: screenHeight > 950
                ? 1600
                : screenHeight > 920
                    ? 940
                    : screenHeight > 840
                        ? 850
                        : 800,
            fit: BoxFit.cover,
          ),
        ),
        CustomBokeh(
          size: screenWidth,
          scaleY: screenHeight > 950 ? 0.8 : 0.6,
          scaleX: screenHeight > 950 ? 0.2 : 0.4,
          alignment: Alignment.bottomCenter,
          transform: Offset(Sizes.scale,
              screenHeight > 950 ? screenHeight / 4 : screenHeight / 7),
          shape: BoxShape.rectangle,
          angleInRadians: pi / Sizes.s2,
          isPurpleShadow: true,
        ),
        Padding(
          padding: EdgeInsets.only(top: topOffset),
          child: Column(
            children: [
              Text(
                s.onboardingBeforeAfterTitleText,
                style: BS.tex24,
              ),
              Space.h24,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s30),
                child: Text(
                  s.onboardingBeforeAfterText,
                  style: BS.tex14,
                  textAlign: TextAlign.center,
                ),
              ),
              Space.h32,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s25),
                child: CustomButton(
                  s.onboardingContinueButtonText,
                  onTap: nextPage,
                  outLine: true,
                  borderColor: BC.purpleViolet,
                  colorButton: BC.purpleViolet,
                  borderRadius: AppRadius.r18,
                  padding: Sizes.s23,
                  textColor: BC.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
