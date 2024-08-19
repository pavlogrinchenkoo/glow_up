import 'dart:math';

import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/results_page/bloc.dart';
import 'package:glow_up/screens/results_page/widgets/result_footer/result_footer_widget_with_blur.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_boxeh.dart';
import 'package:flutter/cupertino.dart';

class ResultFooterWidget extends StatelessWidget {
  final ScreenState state;
  final double height;
  final S s;
  final VoidCallback revealResults;
  final VoidCallback toInviteFriends;

  const ResultFooterWidget({
    super.key,
    required this.state,
    required this.height,
    required this.s,
    required this.revealResults,
    required this.toInviteFriends,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (state.useBlurBlock) ...[
          CustomBokeh(
            size: height / 1,
            scaleX: height < 840 ? 0.6 : 0.9,
            scaleY: height < 840 ? 0.4 : 1,
            alignment: Alignment.center,
            transform: const Offset(0, Sizes.s80),
            shape: BoxShape.rectangle,
            angleInRadians: pi / Sizes.s2,
            blurWhiteSoft: true,
          ),
          CustomBokeh(
            size: height / 1,
            scaleY: 0.1,
            scaleX: 1,
            alignment: Alignment.bottomCenter,
            transform: Offset(height / 5, height / 2.5),
            shape: BoxShape.rectangle,
            angleInRadians: pi / Sizes.s2,
            blurWhiteSoft: true,
            // isPurpleShadow: true,
          ),
          CustomBokeh(
            size: height / 1,
            scaleY: 0.1,
            scaleX: 1,
            alignment: Alignment.bottomCenter,
            transform: Offset(-height / 5, height / 2.5),
            shape: BoxShape.rectangle,
            angleInRadians: pi / Sizes.s2,
            blurWhiteSoft: true,
          ),
          CustomBokeh(
            size: height / 1,
            scaleY: 1,
            scaleX: 0.6,
            alignment: Alignment.bottomCenter,
            transform: Offset(Sizes.scale, height / 2),
            shape: BoxShape.rectangle,
            angleInRadians: pi / Sizes.s2,
            blurWhiteSoft: true,
          ),
        ],
        Column(
          children: [
            const Spacer(),
            ResultFooterWidgetWithBlur(
              state: state,
              height: height,
              s: s,
              revealResults: revealResults,
              toInviteFriends: toInviteFriends,
            ),
            SizedBox(
              height: height < 840 ? height / 30 : height / 20,
            ),
          ],
        ),
      ],
    );
  }
}
