import 'package:flutter/cupertino.dart';
import 'package:glow_up/api/pro_analysis/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/deep_scanning_result_page/widgets/deep_scanning_result_section_widget.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';

class ListItemSecond extends StatelessWidget {
  final double valueProgress;
  final void Function(double) onValueChanged;
  final ProAnalysisModel? proAnalysisModel;
  final String? frontIconPath;
  final String? deepIconPath;

  const ListItemSecond({
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
            title: s.textureEnhancedPores,
            titleStyle: BS.tex24,
            items: [],
            space: Sizes.s10),
        SectionData(
            title: s.analysisOfDryOilySkin,
            titleStyle: BS.tex20Text.apply(color: BC.purpleViolet),
            items: [],
            space: Sizes.scaleZero),
        SectionData(
            title: s.poreAnalysis,
            titleStyle: BS.tex14withFont700,
            items: [
              ItemData(
                label: s.forehead,
                labelStyle: BS.tex14withFont400,
                value:
                    "${proAnalysisModel?.enlarged_pore_count?.forehead_count ?? ""} pcs",
                valueStyle: BS.tex14withFont400.apply(color: BC.purpleViolet),
              ),
              ItemData(
                label: s.leftCheek,
                labelStyle: BS.tex14withFont400,
                value:
                    "${proAnalysisModel?.enlarged_pore_count?.left_cheek_count ?? ""} pcs",
                valueStyle: BS.tex14withFont400.apply(color: BC.purpleViolet),
              ),
              ItemData(
                label: s.rightCheek,
                labelStyle: BS.tex14withFont400,
                value:
                    "${proAnalysisModel?.enlarged_pore_count?.right_cheek_count ?? ""} pcs",
                valueStyle: BS.tex14withFont400.apply(color: BC.purpleViolet),
              ),
              ItemData(
                label: s.chin,
                labelStyle: BS.tex14withFont400,
                value:
                    "${proAnalysisModel?.enlarged_pore_count?.chin_count ?? ""} pcs",
                valueStyle: BS.tex14withFont400.apply(color: BC.purpleViolet),
              ),
            ],
            space: Sizes.s10,
            useLeftPadding: true),
      ],
    );
  }
}
