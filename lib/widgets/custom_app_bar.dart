import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool back;
  final bool useLeftButton;
  final bool useRightButton;
  final VoidCallback? leftOnClick;
  final VoidCallback? rightOnClick;
  final SvgGenImage? leftIcon;
  final SvgGenImage? rightIcon;
  final bool usePoint;
  final Color? backgroundWhiteColor;
  final Color? textColor;

  const CustomAppBar({
    this.title,
    this.back = false,
    this.useLeftButton = true,
    this.useRightButton = false,
    this.leftOnClick,
    this.rightOnClick,
    this.leftIcon,
    this.rightIcon,
    this.usePoint = false,
    this.backgroundWhiteColor,
    this.textColor,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundWhiteColor ?? BC.pink,
      foregroundColor: backgroundWhiteColor ?? BC.pink,
      shadowColor: backgroundWhiteColor ?? BC.pink,
      surfaceTintColor: backgroundWhiteColor ?? BC.pink,
      elevation: 0,
      leading: useLeftButton
          ? IconButton(
              icon: leftIcon?.svg(
                      color: (backgroundWhiteColor != null
                              ? BC.black
                              : null)) ??
                  const Icon(Icons.abc_rounded),
              onPressed: leftOnClick,
            )
          : null,
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!useLeftButton) SizedBox(width: usePoint ? 48 : 0),
            Flexible(
              child: Text(
                title ?? "",
                style: BS.tex18Text.apply(
                    color: textColor ?? (backgroundWhiteColor != null ? BC.black : BC.white)),
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                textAlign: TextAlign.center,
              ),
            ),
            if (!useRightButton) const SizedBox(width: 48),
          ],
        ),
      ),
      actions: useRightButton
          ? [
              IconButton(
                icon: rightIcon?.svg(
                        color:
                            backgroundWhiteColor != null ? BC.black : null) ??
                    const Icon(Icons.abc_rounded),
                onPressed: rightOnClick,
              ),
            ]
          : [const SizedBox(width: 48)],
      centerTitle: true,
    );
  }
}
