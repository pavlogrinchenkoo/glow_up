import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final String? subTitle;
  final VoidCallback? onTap;
  final bool outLine;
  final Color? colorButton;
  final Color? borderColor;
  final Color? textColor;
  final SvgGenImage? svgGenImage;
  final double? padding;
  final TextStyle? textStyle;
  final double? borderRadius;
  final double? spaceBetweenTextImage;
  final double? heightImage;
  final bool useShareButton;
  final AssetGenImage? assetGenImage;

  const CustomButton(
    this.title, {
    this.subTitle,
    this.onTap,
    this.outLine = false,
    this.colorButton,
    this.svgGenImage,
    this.padding,
    this.borderColor,
    this.textStyle,
    this.textColor,
    this.borderRadius,
    this.spaceBetweenTextImage,
    this.heightImage,
    this.useShareButton = false,
    this.assetGenImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colorButton ?? (outLine ? BC.white : BC.black),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        side: BorderSide(
            color:
                borderColor ?? (colorButton ?? (outLine ? BC.black : BC.white)),
            width: 1),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius ?? 8),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: useShareButton ? 15 : padding ?? Sizes.s14),
          child: Row(
            mainAxisAlignment: useShareButton
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: useShareButton
                ? [
                    Space.w12,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(Sizes.s28),
                      child: assetGenImage?.image(
                        height: heightImage ?? Sizes.s16,
                        width: heightImage ?? Sizes.s16,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: Sizes.s8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: textStyle ??
                                BS.tex18Text.copyWith(
                                    color: textColor ??
                                        (outLine ? BC.black : BC.white))),
                        const SizedBox(height: Sizes.s8),
                        Text(subTitle ?? "",
                            style: textStyle ??
                                BS.tex14withFont500.copyWith(
                                    color: textColor ??
                                        (outLine ? BC.black : BC.white))),
                      ],
                    ),
                  ]
                : [
                    if (svgGenImage != null)
                      svgGenImage!.svg(height: heightImage ?? Sizes.s16),
                    if (svgGenImage != null)
                      SizedBox(width: spaceBetweenTextImage),
                    if (svgGenImage == null) Space.h8,
                    Text(title,
                        style: textStyle ??
                            BS.tex18Text.copyWith(
                                color: textColor ??
                                    (outLine ? BC.black : BC.white))),
                  ],
          ),
        ),
      ),
    );
  }
}
