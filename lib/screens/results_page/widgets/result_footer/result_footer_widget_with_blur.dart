import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../bloc.dart';

class ResultFooterWidgetWithBlur extends StatelessWidget {
  final ScreenState state;
  final double height;
  final S s;
  final VoidCallback revealResults;
  final VoidCallback toInviteFriends;

  const ResultFooterWidgetWithBlur({
    super.key,
    required this.state,
    required this.height,
    required this.s,
    required this.revealResults,
    required this.toInviteFriends,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s18),
      child: Column(
        children: [
          CustomButton(
            s.revealResults,
            onTap: revealResults,
            outLine: true,
            borderColor: BC.salad,
            colorButton: BC.salad,
            borderRadius: height < 840 ? AppRadius.r18 : AppRadius.r18,
            padding: height < 840 ? Sizes.s23 : Sizes.s23,
            svgGenImage: Assets.images.starsIcon,
            spaceBetweenTextImage: Sizes.s8,
          ),
          Space.h8,
          CustomButton(
            s.inviteFriendsEarn,
            onTap: toInviteFriends,
            outLine: true,
            borderColor: BC.salad,
            colorButton: BC.navyGrey,
            borderRadius: height < 840 ? AppRadius.r18 : AppRadius.r18,
            padding: height < 840 ? Sizes.s23 : Sizes.s23,
            textColor: BC.salad,
          ),
        ],
      ),
    );
  }
}
