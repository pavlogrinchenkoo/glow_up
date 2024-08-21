import 'package:flutter/cupertino.dart';
import 'package:glow_up/api/pro_analysis/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/deep_scanning_result_page/widgets/deep_scanning_result_section_widget.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';

class ListItemThird extends StatelessWidget {
  final double valueProgress;
  final void Function(double) onValueChanged;
  final ProAnalysisModel? proAnalysisModel;
  final String? frontIconPath;
  final String? deepIconPath;
  final int randomMelaninConcentration;

  const ListItemThird({
    super.key,
    required this.valueProgress,
    required this.onValueChanged,
    this.proAnalysisModel,
    this.frontIconPath,
    this.deepIconPath,
    required this.randomMelaninConcentration,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    final S s = S.of(context);
    return DeepScanningResultSectionWidget(
      valueProgress: valueProgress,
      onValueChanged: onValueChanged,
      height: height,
      width: width,
      frontIconPath: frontIconPath,
      deepIconPath: deepIconPath,
      sections: [
        SectionData(
            title: s.brownArea,
            titleStyle: BS.tex24,
            items: [],
            space: Sizes.s10),
        SectionData(
            title: s.pigmentationAnalysis,
            titleStyle: BS.tex20Text.apply(color: BC.purpleViolet),
            items: [],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.skinType,
                labelStyle: BS.tex14withFont700,
                value: ProAnalysisSkinToneEnum
                    .values[proAnalysisModel?.skintone?.value ?? 0]
                    .getTitleText(s),
                valueStyle: BS.tex14withFont400.apply(color: BC.purpleViolet),
              ),
            ],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.skinHueType,
                labelStyle: BS.tex14withFont700,
                value: ProAnalysisSkinHueEnum
                    .values[proAnalysisModel?.skin_hue_ha?.skin_hue ?? 0]
                    .getTitleText(s),
                valueStyle: BS.tex14withFont400.apply(color: BC.purpleViolet),
              ),
            ],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.melaninConcentration,
                labelStyle: BS.tex14withFont700,
                value: "$randomMelaninConcentration/100",
                valueStyle: BS.tex14withFont400.apply(color: BC.purpleViolet),
              ),
            ],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.percentageOfMelaninDeposition,
                labelStyle: BS.tex14withFont700,
                value:
                    "${proAnalysisModel?.score_info?.melanin_score ?? 0}/100",
                valueStyle: BS.tex14withFont400.apply(color: BC.purpleViolet),
              ),
            ],
            space: Sizes.scaleZero),
      ],
    );
  }
}
