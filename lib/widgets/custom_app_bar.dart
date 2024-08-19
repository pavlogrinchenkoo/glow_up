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

  const CustomAppBar({
    this.title,
    this.back = false,
    this.useLeftButton = true,
    this.useRightButton = false,
    this.leftOnClick,
    this.rightOnClick,
    this.leftIcon,
    this.rightIcon,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: BC.navyGrey,
      foregroundColor: BC.navyGrey,
      shadowColor: BC.navyGrey,
      surfaceTintColor: BC.navyGrey,
      elevation: 0,
      leading: useLeftButton
          ? IconButton(
              icon: leftIcon?.svg() ?? const Icon(Icons.abc_rounded),
              onPressed: leftOnClick,
            )
          : null,
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!useLeftButton) const SizedBox(width: 0),
            Flexible(
              child: Text(
                title ?? "",
                style: BS.tex18Text.apply(color: BC.white),
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
                icon: rightIcon?.svg() ?? const Icon(Icons.abc_rounded),
                onPressed: rightOnClick,
              ),
            ]
          : [const SizedBox(width: 48)],
      centerTitle: true,
    );
  }
}
