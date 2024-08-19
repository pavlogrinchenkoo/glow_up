import 'dart:math';

import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_boxeh.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingEnableNotifications extends StatelessWidget {
  final VoidCallback nextPage;
  final S s;

  const OnboardingEnableNotifications({
    super.key,
    required this.nextPage,
    required this.s,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double topOffset = screenHeight / 1.67;
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight / 7),
            child: Assets.images.onboarding.onboardingBell.image(
              width: screenHeight / 2.5,
              height: screenHeight / 2.5,
              fit: BoxFit.cover,
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
          padding: EdgeInsets.only(top: topOffset),
          child: Column(
            children: [
              Text(
                s.onboardingNotificationTitleText,
                style: BS.tex24.apply(color: BC.white),
              ),
              Space.h24,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s30),
                child: Text(
                  s.onboardingNotificationText,
                  style: BS.tex14.apply(color: BC.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Space.h32,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s25),
                child: CustomButton(
                  s.onboardingNotificationButtonText,
                  onTap: nextPage,
                  outLine: true,
                  borderColor: BC.salad,
                  colorButton: BC.salad,
                  borderRadius: AppRadius.r18,
                  padding: Sizes.s23,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
