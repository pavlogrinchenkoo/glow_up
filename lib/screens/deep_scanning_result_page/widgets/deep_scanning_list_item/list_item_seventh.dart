import 'package:flutter/cupertino.dart';
import 'package:glow_up/api/pro_analysis/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/deep_scanning_result_page/widgets/deep_scanning_result_section_widget.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';

class ListItemSeventh extends StatelessWidget {
  final double valueProgress;
  final void Function(double) onValueChanged;
  final ProAnalysisModel? proAnalysisModel;
  final bool showImage;

  const ListItemSeventh({
    super.key,
    required this.valueProgress,
    required this.onValueChanged,
    this.proAnalysisModel,
    required this.showImage,
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
      showImage: showImage,
      sections: [
        SectionData(
            title: "Text",
            titleStyle: BS.tex24.apply(color: BC.white),
            items: [],
            space: Sizes.s10),
        SectionData(
            title: s.eyeIssuesAnalysis,
            titleStyle: BS.tex20Text.apply(color: BC.salad),
            items: [],
            space: Sizes.scaleZero),
        SectionData(
            title: "",
            titleStyle: BS.tex14withFont700.apply(color: BC.white),
            items: [
              ItemData(
                label: s.eyeBags,
                labelStyle: BS.tex14withFont700.apply(color: BC.white),
                value: ProAnalysisEyeBagsEnum
                    .values[proAnalysisModel?.eye_pouch?.value ?? 0]
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
                label: s.darkCircles,
                labelStyle: BS.tex14withFont700.apply(color: BC.white),
                value: ProAnalysisDarkCirclesEnum
                    .values[proAnalysisModel?.dark_circle?.value ?? 0]
                    .getTitleText(s),
                valueStyle: BS.tex14withFont400.apply(color: BC.salad),
              ),
            ],
            space: Sizes.scaleZero),
      ],
    );
  }
}
