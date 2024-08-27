import 'package:blur/blur.dart';
import 'package:glow_up/api/show_your_results/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomShowBigResults extends StatelessWidget {
  final List<ShowYourResultsModel> listModels;
  final int? overallProgress;
  final int? potentialProgress;
  final int? age;
  final bool useBlur;
  final bool isFirstCard;
  final String? titleText;
  final int? textPercent;
  final double height;
  final int index;

  const CustomShowBigResults({
    super.key,
    required this.listModels,
    this.overallProgress = 0,
    this.age = 0,
    this.potentialProgress = 0,
    this.useBlur = false,
    this.isFirstCard = true,
    this.titleText,
    this.textPercent,
    required this.height,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final S s = S.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s12),
      child: Stack(
        children: [
          Positioned(
            top: height / 2.45,
            left: 5,
            right: 5,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(AppRadius.r20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: BC.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(AppRadius.r20),
              border: Border.all(
                color: BC.white.withOpacity(1),
                width: 1,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: !isFirstCard ? height / 10 : height / 8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (!isFirstCard) ...[
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            titleText ?? "",
                            style: BS.tex21Text.apply(color: BC.lightGray),
                          ),
                        ),
                        Space.w8,
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: Sizes.s10, vertical: Sizes.s10),
                            decoration: BoxDecoration(
                              color: BC.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(AppRadius.r8),
                            ),
                            child: Center(
                              child: Text(
                                "${s.top} $textPercent%",
                                style: BS.tex16.apply(color: BC.purpleViolet),
                              ),
                            ),
                          ),
                        ),
                      ] else ...[
                        SizedBox(
                          width: width / 16,
                        ),
                        Text(
                          s.overall,
                          style: BS.tex16,
                        ),
                        Space.w25,
                        CustomIndicator(
                          height: height / 22,
                          downloadIndicatorValue: overallProgress! / 100,
                          strokeWidth: 4,
                          textProgress: overallProgress.toString(),
                          useBlur: useBlur,
                        ),
                        const Spacer(),
                        Text(
                          s.potential,
                          style: BS.tex16,
                        ),
                        Space.w25,
                        CustomIndicator(
                          height: height / 22,
                          downloadIndicatorValue: potentialProgress! / 100,
                          strokeWidth: 4,
                          textProgress: potentialProgress.toString(),
                          useBlur: useBlur,
                        ),
                        SizedBox(
                          width: width / 8,
                        ),
                      ],
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: BC.lightGray.withOpacity(0.4),
                ),
                for (var item in listModels)
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Sizes.s18,
                        vertical: height > 840
                            ? height / 140
                            : height < 670
                                ? height / 700
                                : height / 140),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item.imageTextGroupEnum.getTitle(s),
                          style: BS.tex24,
                        ),
                        Space.w16,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.leftTitle,
                              style: BS.tex16.apply(color: BC.lightGray),
                            ),
                            if (item.subLeftTitle != "")
                              useBlur
                                  ? Blur(
                                      blur: 3,
                                      borderRadius:
                                          BorderRadius.circular(AppRadius.r20),
                                      blurColor: BC.lightGray.withOpacity(0.1),
                                      child: Text(
                                        item.subLeftTitle,
                                        style: BS.tex14withFont400.apply(
                                            color: item.colorGroupEnum
                                                .getColor(item.colorGroupEnum)),
                                      ),
                                    )
                                  : Text(
                                      item.subLeftTitle,
                                      style: BS.tex14withFont400.apply(
                                          color: item.colorGroupEnum
                                              .getColor(item.colorGroupEnum)),
                                    ),
                          ],
                        ),
                        const Spacer(),
                        useBlur
                            ? Blur(
                                blur: 4,
                                borderRadius:
                                    BorderRadius.circular(AppRadius.r20),
                                blurColor: BC.lightGray.withOpacity(0.1),
                                child: SizedBox(
                                  width: width / 7,
                                  child: Text(
                                    item.rightTitle,
                                    style: BS.tex24.apply(
                                        color: item.colorGroupEnum
                                            .getColor(item.colorGroupEnum)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            : Text(
                                item.rightTitle,
                                style: BS.tex24.apply(
                                    color: item.colorGroupEnum
                                        .getColor(item.colorGroupEnum)),
                              ),
                      ],
                    ),
                  ),
                isFirstCard
                    ? const SizedBox.shrink()
                    : switch (index) {
                        1 => SizedBox(height: height / 32),
                        2 => SizedBox(height: height / 57),
                        _ => SizedBox(height: height / 57),
                      }
              ],
            ),
          ),
        ],
      ),
    );
  }
}
