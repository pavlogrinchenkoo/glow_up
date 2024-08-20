import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';

class WriteFooterSheet extends StatelessWidget {
  final bool isActivated;
  final bool isAccept;
  final bool exitingCode;
  final VoidCallback activateOnTap;
  final VoidCallback writeAnotherCode;

  const WriteFooterSheet({
    super.key,
    required this.isActivated,
    required this.isAccept,
    required this.exitingCode,
    required this.activateOnTap,
    required this.writeAnotherCode,
  });

  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);
    return Column(
      children: [
        CustomButton(
          exitingCode
              ? s.tryAnotherCode
              : isAccept
                  ? s.activated
                  : s.activate,
          onTap: exitingCode
              ? writeAnotherCode
              : isActivated
                  ? isAccept
                      ? null
                      : activateOnTap
                  : null,
          outLine: true,
          colorButton: exitingCode
              ? BC.purpleViolet
              : isActivated
                  ? isAccept
                      ? BC.white
                      : BC.purpleViolet
                  : isAccept
                      ? BC.navyGrey
                      : BC.purpleViolet.withOpacity(0.6),
          borderColor: exitingCode
              ? BC.purpleViolet
              : isActivated
                  ? isAccept
                      ? BC.purpleViolet
                      : BC.purpleViolet
                  : isAccept
                      ? BC.salad
                      : BC.purpleViolet.withOpacity(0.6),
          borderRadius: AppRadius.r18,
          padding: Sizes.s25,
          textColor: exitingCode
              ? BC.white
              : isAccept
                  ? BC.purpleViolet
                  : BC.white,
          imageColor: isAccept ? BC.purpleViolet : BC.white,
          svgGenImage: exitingCode
              ? null
              : isAccept
                  ? Assets.images.simpleCheckMark
                  : null,
        ),
      ],
    );
  }
}
