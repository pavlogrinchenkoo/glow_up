import 'package:flutter/material.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_before_after.dart';

class DeepScanningResultSectionWidget extends StatelessWidget {
  final String? header;
  final double valueProgress;
  final void Function(double) onValueChanged;
  final double height;
  final double width;
  final List<SectionData> sections;
  final String? frontIconPath;
  final String? deepIconPath;
  final bool showImage;

  const DeepScanningResultSectionWidget({
    Key? key,
    this.header,
    required this.valueProgress,
    required this.onValueChanged,
    required this.height,
    required this.width,
    required this.sections,
    this.frontIconPath,
    this.deepIconPath,
    this.showImage = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (header != null) ...[
          Text(
            header ?? "",
            style: BS.tex18Text.apply(color: BC.purpleViolet),
          ),
          Space.h16,
        ],
        ...sections.map((section) => Padding(
              padding: const EdgeInsets.only(bottom: Sizes.s15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (section.title.isNotEmpty)
                    Text(
                      section.title,
                      style: section.titleStyle,
                    ),
                  SizedBox(height: section.space ?? Sizes.s20),
                  ...section.items.map((item) => Padding(
                        padding: EdgeInsets.only(
                            left: section.useLeftPadding ?? false
                                ? Sizes.s20
                                : Sizes.scaleZero,
                            bottom: Sizes.s10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.label,
                              style: item.labelStyle,
                            ),
                            Text(
                              item.value,
                              style: item.valueStyle,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            )),
        if (showImage) ...[
          CustomBeforeAfter(
            valueProgress: valueProgress,
            onValueChanged: onValueChanged,
            height: height < 840 ? height / 1.57 : height / 1.8,
            width: height < 840 ? height / 1.57 : height / 1.8,
            borderRadius: AppRadius.r20,
            frontIconPath: frontIconPath,
            deepIconPath: deepIconPath,
          ),
          Space.h20,
        ],
      ],
    );
  }
}

class SectionData {
  final String title;
  final TextStyle titleStyle;
  final List<ItemData> items;
  final double? space;
  final bool? useLeftPadding;

  SectionData({
    required this.title,
    required this.titleStyle,
    required this.items,
    this.space,
    this.useLeftPadding,
  });
}

class ItemData {
  final String label;
  final TextStyle labelStyle;
  final String value;
  final TextStyle valueStyle;

  ItemData({
    required this.label,
    required this.labelStyle,
    required this.value,
    required this.valueStyle,
  });
}
