import 'package:flutter/cupertino.dart';
import 'package:glow_up/api/pro_analysis/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/deep_scanning_result_page/widgets/deep_scanning_result_section_widget.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';

class ListItemSixth extends StatelessWidget {
  final double valueProgress;
  final void Function(double) onValueChanged;
  final ProAnalysisModel? proAnalysisModel;
  final String? frontIconPath;
  final String? deepIconPath;

  const ListItemSixth({
    super.key,
    required this.valueProgress,
    required this.onValueChanged,
    this.proAnalysisModel,
    this.frontIconPath,
    this.deepIconPath,
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
            title: s.enhancedTextureLines,
            titleStyle: BS.tex24.apply(color: BC.white),
            items: [],
            space: Sizes.s10),
        SectionData(
            title: s.agingAnalysis,
            titleStyle: BS.tex20Text.apply(color: BC.salad),
            items: [],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.skinAge,
                labelStyle: BS.tex14withFont700.apply(color: BC.white),
                value: proAnalysisModel?.skin_age?.value.toString() ?? "",
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
            ],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.foreheadWrinkles,
                labelStyle: BS.tex14withFont700.apply(color: BC.white),
                value: ProAnalysisForeheadWrinklesEnum
                    .values[proAnalysisModel?.forehead_wrinkle?.value ?? 0]
                    .getTitleText(s),
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
            ],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.nasolabialFolds,
                labelStyle: BS.tex14withFont700.apply(color: BC.white),
                value: ProAnalysisNasolabialFoldEnum
                    .values[proAnalysisModel?.nasolabial_fold?.value ?? 0]
                    .getTitleText(s),
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
            ],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.crowsFeet,
                labelStyle: BS.tex14withFont700.apply(color: BC.white),
                value: ProAnalysisCrowsFeetEnum
                    .values[proAnalysisModel?.crows_feet?.value ?? 0]
                    .getTitleText(s),
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
            ],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.glabellaWrinkles,
                labelStyle: BS.tex14withFont700.apply(color: BC.white),
                value: ProAnalysisGlabellaWrinklesEnum
                    .values[proAnalysisModel?.glabella_wrinkle?.value ?? 0]
                    .getTitleText(s),
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
            ],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.fineLinesOnForehead,
                labelStyle: BS.tex14withFont700.apply(color: BC.white),
                value: ProAnalysisEyeFinelinesEnum
                    .values[proAnalysisModel?.eye_finelines?.value ?? 0]
                    .getTitleText(s),
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
            ],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.fineLinesUnderLeftEye,
                labelStyle: BS.tex14withFont700.apply(color: BC.white),
                value: ProAnalysisFineLinesLeftEnum.values[
                        proAnalysisModel?.left_eye_finelines_severity?.value ??
                            0]
                    .getTitleText(s),
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
            ],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.fineLinesUnderRightEye,
                labelStyle: BS.tex14withFont700.apply(color: BC.white),
                value: ProAnalysisFineLinesRightEnum.values[
                        proAnalysisModel?.right_eye_finelines_severity?.value ??
                            0]
                    .getTitleText(s),
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
            ],
            space: Sizes.scaleZero),
      ],
    );
  }
}
