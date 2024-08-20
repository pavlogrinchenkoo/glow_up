import 'package:flutter/cupertino.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';

class GuideInfoConclusion extends StatelessWidget {
  final String title;
  final String subTitle;

  const GuideInfoConclusion({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: BS.tex20Text.apply(color: BC.purpleViolet),
        ),
        Space.h16,
        Text(
          subTitle,
          style: BS.tex14withFont500,
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
