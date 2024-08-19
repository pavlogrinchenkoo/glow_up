import 'package:flutter/cupertino.dart';
import 'package:glow_up/api/pro_analysis/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/deep_scanning_result_page/widgets/deep_scanning_result_section_widget.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';

class ListItemFifth extends StatelessWidget {
  final double valueProgress;
  final void Function(double) onValueChanged;
  final ProAnalysisModel? proAnalysisModel;
  final String? frontIconPath;
  final String? deepIconPath;

  const ListItemFifth({
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
            title: s.redArea,
            titleStyle: BS.tex24.apply(color: BC.white),
            items: [],
            space: Sizes.s10),
        SectionData(
            title: s.sensitivityAnalysis,
            titleStyle: BS.tex20Text.apply(color: BC.salad),
            items: [],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.percentageOfSensitiveAreas,
                labelStyle: BS.tex14withFont700.apply(color: BC.white),
                value:
                    "${proAnalysisModel?.score_info?.sensitivity_score ?? 0}%",
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
            ],
            space: Sizes.scaleZero),
      ],
    );
  }
}
