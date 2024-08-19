import 'package:flutter/cupertino.dart';
import 'package:glow_up/api/pro_analysis/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/deep_scanning_result_page/widgets/deep_scanning_result_section_widget.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';

class ListItemFirst extends StatelessWidget {
  final double valueProgress;
  final void Function(double) onValueChanged;
  final ProAnalysisModel? proAnalysisModel;
  final String? frontIconPath;
  final String? deepIconPath;

  const ListItemFirst({
    super.key,
    required this.valueProgress,
    required this.onValueChanged,
    this.proAnalysisModel,
    this.frontIconPath,
    this.deepIconPath,
  });

  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return DeepScanningResultSectionWidget(
      header: s.yourRes,
      valueProgress: valueProgress,
      onValueChanged: onValueChanged,
      height: height,
      width: width,
      frontIconPath: frontIconPath,
      deepIconPath: deepIconPath,
      sections: [
        SectionData(
            title: s.textureEnhancedBlackheads,
            titleStyle: BS.tex24.apply(color: BC.white),
            items: [],
            space: Sizes.s10),
        SectionData(
            title: s.analysisOfDryOilySkin,
            titleStyle: BS.tex20Text.apply(color: BC.salad),
            items: [],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.skinTypeClassification,
                labelStyle: BS.tex14withFont700.apply(color: BC.white),
                value: ProAnalysisSkinTypeEnum
                    .values[proAnalysisModel?.skin_type?.skin_type ?? 0]
                    .getTitleText(s),
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
            ],
            space: Sizes.scaleZero),
        SectionData(
            title: s.percentageOfOiliness,
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.forehead,
                labelStyle: BS.tex14withFont400.apply(color: BC.white),
                value: "${proAnalysisModel?.pores_forehead?.value ?? ""}%",
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
              ItemData(
                label: s.leftCheek,
                labelStyle: BS.tex14withFont400.apply(color: BC.white),
                value: "${proAnalysisModel?.pores_left_cheek?.value ?? ""}%",
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
              ItemData(
                label: s.rightCheek,
                labelStyle: BS.tex14withFont400.apply(color: BC.white),
                value: "${proAnalysisModel?.pores_right_cheek?.value ?? ""}%",
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
            ],
            space: Sizes.s10,
            useLeftPadding: true),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.blackheadCount,
                labelStyle: BS.tex14withFont700.apply(color: BC.white),
                value: "${proAnalysisModel?.blackhead_count ?? ""} pcs",
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
            ],
            space: Sizes.scaleZero),
      ],
    );
  }
}
