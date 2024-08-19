import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  final String textCheckMark;
  final String? restore;
  final String? EUALA;
  final String? privacyPolicy;
  final String? close;
  final double height;
  final VoidCallback? restorePurchase;
  final VoidCallback? eulaAction;
  final VoidCallback? privacyPolicyAction;
  final VoidCallback? closeAction;
  final bool isActivateRestore;
  final bool isActivateEULA;
  final bool isActivatePrivacyPolicy;
  final bool isActivateClose;
  final double? padding;

  const FooterText({
    super.key,
    required this.textCheckMark,
    this.restore,
    this.EUALA,
    this.privacyPolicy,
    this.close,
    required this.height,
    this.restorePurchase,
    this.eulaAction,
    this.privacyPolicyAction,
    this.closeAction,
    this.isActivateRestore = true,
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
            ),
          ],
        ),
        height > 950
            ? SizedBox(height: height / 50)
            : height > 840
                ? SizedBox(height: height / 25)
                : height > 670
                    ? SizedBox(
                        height: height / 100,
                      )
                    : SizedBox(
                        height: height / 75,
                      ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: padding ?? Sizes.s28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (isActivateRestore)
                InkWell(
                  onTap: restorePurchase,
                  child: Text(
                    restore ?? "",
                    style: BS.tex12Text.apply(color: BC.white.withOpacity(0.7)),
                    textAlign: TextAlign.center,
                  ),
                ),
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
