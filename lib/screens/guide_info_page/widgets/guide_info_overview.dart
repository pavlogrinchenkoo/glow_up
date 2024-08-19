import 'package:flutter/cupertino.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';

class GuideInfoOverview extends StatelessWidget {
  final String title;
  final String subTitle;

  const GuideInfoOverview({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: BS.tex20Text.apply(color: BC.salad),
        ),
        Space.h8,
        Text(
          subTitle,
          style: BS.tex14withFont500.apply(color: BC.white),
        ),
      ],
    );
  }
}
