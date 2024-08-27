import 'dart:io';
import 'dart:math';

import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_boxeh.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingShapeFuture extends StatelessWidget {
  final VoidCallback nextPage;
  final VoidCallback openPrivacyPolicy;
  final S s;

  const OnboardingShapeFuture({
    super.key,
    required this.nextPage,
    required this.openPrivacyPolicy,
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
          child: Assets.images.onboarding.onboardingFirst.image(
            width: screenWidth,
            height: Platform.isIOS
                ? screenHeight < 840
                    ? 820
                    : screenHeight < 950
                        ? screenHeight
                        : 1600
                : 750,
            fit: BoxFit.cover,
          ),
        ),
        if (screenWidth < 500)
          CustomBokeh(
            size: screenWidth,
            scaleY: screenHeight > 950 ? 0.8 : 0.6,
            scaleX: screenHeight > 950 ? 0.2 : 0.4,
            alignment: Alignment.bottomCenter,
            transform: Offset(Sizes.scale,
                screenHeight > 950 ? screenHeight / 4 : Sizes.s100),
            shape: BoxShape.rectangle,
            angleInRadians: pi / Sizes.s2,
            isPurpleShadow: true,
          ),
        Padding(
          padding: EdgeInsets.only(top: topOffset),
          child: Column(
            children: [
              Text(
                s.onboardingShapeTitleText,
                style: BS.tex24,
              ),
              Space.h24,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s30),
                child: Text(
                  s.onboardingShapeText,
                  style: BS.tex14,
                  textAlign: TextAlign.center,
                ),
              ),
              Space.h32,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s25),
                child: CustomButton(
                  s.onboardingGetButtonText,
                  onTap: nextPage,
                  outLine: true,
                  borderColor: BC.purpleViolet,
                  colorButton: BC.purpleViolet,
                  borderRadius: AppRadius.r18,
                  padding: Sizes.s23,
                  svgGenImage: Assets.images.starsIcon,
                  spaceBetweenTextImage: Sizes.s8,
                  textColor: BC.white,
                  imageColor: BC.white,
                ),
              ),
              Space.h16,
              Text(
                s.onboardingTermFooterTitleText,
                style: BS.tex10,
                textAlign: TextAlign.center,
              ),
              InkWell(
                highlightColor: BC.white,
                onTap: openPrivacyPolicy,
                child: Text(
                  s.onboardingTermFooterText,
                  style: BS.tex10.apply(
                      decoration: TextDecoration.underline,
                      decorationColor: BC.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
