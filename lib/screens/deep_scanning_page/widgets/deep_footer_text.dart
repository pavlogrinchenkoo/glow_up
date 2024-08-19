import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:flutter/material.dart';

class DeepFooterText extends StatelessWidget {
  final String textCheckMark;
  final String? EUALA;
  final String? privacyPolicy;
  final String? close;
  final double height;
  final VoidCallback? eulaAction;
  final VoidCallback? privacyPolicyAction;
  final VoidCallback? closeAction;
  final bool isActivateEULA;
  final bool isActivatePrivacyPolicy;
  final bool isActivateClose;
  final double? padding;

  const DeepFooterText({
    super.key,
    required this.textCheckMark,
    this.EUALA,
    this.privacyPolicy,
    this.close,
    required this.height,
    this.eulaAction,
    this.privacyPolicyAction,
    this.closeAction,
    this.isActivateEULA = true,
    this.isActivatePrivacyPolicy = true,
    this.isActivateClose = true,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.checkMark.svg(
              height: Sizes.s20,
              width: Sizes.s20,
            ),
            Space.w8,
            Text(
              textCheckMark,
              style: BS.tex14withFont400.apply(color: BC.white),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        height > 840
            ? SizedBox(height: height / 25)
            : SizedBox(
                height: height / 50,
              ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: padding ?? Sizes.s28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (isActivateEULA)
                InkWell(
                  onTap: eulaAction,
                  child: Text(
                    EUALA ?? "",
                    style: BS.tex12Text.apply(color: BC.white.withOpacity(0.7)),
                    textAlign: TextAlign.center,
                  ),
                ),
              if (isActivatePrivacyPolicy)
                InkWell(
                  onTap: privacyPolicyAction,
                  child: Text(
                    privacyPolicy ?? "",
                    style: BS.tex12Text.apply(color: BC.white.withOpacity(0.7)),
                    textAlign: TextAlign.center,
                  ),
                ),
              if (isActivateClose)
                InkWell(
                  onTap: closeAction,
                  child: Text(
                    close ?? "",
                    style: BS.tex12Text.apply(color: BC.white.withOpacity(0.7)),
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
