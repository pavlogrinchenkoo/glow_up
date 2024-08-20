import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ShowFooterSheet extends StatelessWidget {
  final bool isCopyCode;
  final VoidCallback copyCode;
  final VoidCallback redeemCode;

  final VoidCallback inviteCode;

  const ShowFooterSheet({
    super.key,
    required this.isCopyCode,
    required this.copyCode,
    required this.redeemCode,
    required this.inviteCode,
  });

  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        CustomButton(
          isCopyCode ? s.copied : s.copyYourCode,
          outLine: true,
          onTap: copyCode,
          colorButton: isCopyCode ? BC.white : BC.purpleViolet,
          textColor: isCopyCode ? BC.purpleViolet : BC.white,
          borderColor: BC.purpleViolet,
          borderRadius: AppRadius.r18,
          padding: Sizes.s25,
          svgGenImage: isCopyCode ? Assets.images.simpleCheckMark : null,
          heightImage: Sizes.s25,
          spaceBetweenTextImage: Sizes.s4,
          imageColor: BC.purpleViolet,
        ),
        Space.h8,
        CustomButton(
          s.redeem,
          onTap: redeemCode,
          outLine: true,
          colorButton: BC.white,
          borderColor: BC.purpleViolet,
          borderRadius: AppRadius.r18,
          padding: Sizes.s25,
          textColor: BC.purpleViolet,
        ),
        SizedBox(height: height / 28),
        InkWell(
          onTap: inviteCode,
          child: Text(
            s.gotInviteCode,
            style: BS.tex16.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
