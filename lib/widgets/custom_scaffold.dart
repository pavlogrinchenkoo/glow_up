import 'package:glow_up/style.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomSheet;
  final bool activateFullSafeArea;
  final bool safeAreaBottom;
  final bool safeAreaTop;
  final bool safeAreaLeft;
  final bool safeAreaRight;
  final Color? backgroundColor;

  const CustomScaffold({
    this.body,
    this.appBar,
    this.bottomSheet,
    required this.activateFullSafeArea,
    this.safeAreaBottom = true,
    this.safeAreaTop = true,
    this.safeAreaLeft = true,
    this.safeAreaRight = true,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: activateFullSafeArea
          ? body ?? const SizedBox.shrink()
          : Container(
              color: backgroundColor ?? BC.pink,
              child: SafeArea(
                  top: safeAreaTop,
                  bottom: safeAreaBottom,
                  left: safeAreaLeft,
                  right: safeAreaRight,
                  child: body ?? const SizedBox.shrink())),
      bottomSheet: bottomSheet,
    );
  }
}
