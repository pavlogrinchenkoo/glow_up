import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../bloc.dart';

class ResultFooterButtonWithoutBlurWidget extends StatelessWidget {
  final ScreenState state;
  final double height;
  final S s;
  final VoidCallback toDeep;
  final VoidCallback share;

  const ResultFooterButtonWithoutBlurWidget({
    super.key,
    required this.state,
    required this.height,
    required this.s,
    required this.toDeep,
    required this.share,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s18),
      child: Column(
        children: [
          if (state.isTakingPhoto == true)
            Padding(
              padding:
                  EdgeInsets.only(top: height < 840 ? Sizes.s45 : Sizes.s40),
              child: CustomButton(
                s.appName,
                subTitle: s.screenShotButtonSubTitle,
                outLine: true,
                borderColor: BC.purpleViolet,
                colorButton: BC.purpleViolet,
                borderRadius: height < 840 ? AppRadius.r18 : AppRadius.r18,
                padding: height < 840 ? Sizes.s22 : Sizes.s23,
                heightImage: Sizes.s60,
                useShareButton: true,
                assetGenImage: Assets.images.glowUpApp,
                textColor: BC.white,
              ),
            )
          else ...[
            if (state.checkUseMethodsPhoto == true)
              Padding(
                padding:
                    EdgeInsets.only(top: height < 840 ? Sizes.s45 : Sizes.s40),
                child: CustomButton(
                  state.changeAppearanceModel?.chooseTextAppearanceEnum
                          .getTitle(
                              state.changeAppearanceModel!
                                  .chooseTextAppearanceEnum,
                              s) ??
                      "",
                  onTap: state.changeAppearanceModel?.chooseActionAppearanceEnum
                      .getAction(
                          state.changeAppearanceModel!
                              .chooseActionAppearanceEnum,
                          context),
                  outLine: true,
                  borderColor: BC.purpleViolet,
                  colorButton: BC.white,
                  borderRadius: height < 840 ? AppRadius.r18 : AppRadius.r18,
                  padding: Sizes.s23,
                  textColor: BC.purpleViolet,
                ),
              )
            else ...[
              height > 900 ? Space.h32 : const SizedBox(),
              CustomButton(
                s.makeDeepScanButton,
                onTap: toDeep,
                outLine: true,
                borderColor: BC.purpleViolet,
                colorButton: BC.purpleViolet,
                borderRadius: height < 840 ? AppRadius.r18 : AppRadius.r18,
                padding: height < 840 ? Sizes.s22 : Sizes.s23,
                svgGenImage: Assets.images.starsIcon,
                spaceBetweenTextImage: Sizes.s8,
                textColor: BC.white,
                imageColor: BC.white,
              ),
              Space.h8,
              CustomButton(
                s.shareFriendButton,
                onTap: share,
                outLine: true,
                borderColor: BC.purpleViolet,
                colorButton: BC.white,
                borderRadius: height < 840 ? AppRadius.r18 : AppRadius.r18,
                padding: height < 840 ? Sizes.s22 : Sizes.s23,
                svgGenImage: Assets.images.shareIcon,
                spaceBetweenTextImage: Sizes.s8,
                textColor: BC.purpleViolet,
                imageColor: BC.purpleViolet,
              ),
            ]
          ]
        ],
      ),
    );
  }
}
