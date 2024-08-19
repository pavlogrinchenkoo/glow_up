import 'dart:io';

import 'package:before_after/before_after.dart';
import 'package:flutter/material.dart';
import 'package:glow_up/style.dart';

class CustomBeforeAfter extends StatelessWidget {
  final double valueProgress;
  final ValueChanged<double> onValueChanged;
  final double height;
  final double width;
  final double borderRadius;
  final String? frontIconPath;
  final String? deepIconPath;

  const CustomBeforeAfter({
    super.key,
    required this.valueProgress,
    required this.onValueChanged,
    required this.height,
    required this.width,
    required this.borderRadius,
    this.frontIconPath,
    this.deepIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BeforeAfter(
        value: valueProgress,
        thumbDecoration: BoxDecoration(
          color: BC.salad,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        trackColor: BC.salad,
        height: height,
        width: width,
        before: Container(
          decoration: BoxDecoration(
            color: BC.white,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Stack(
                children: [
                  Image.file(
                    File(frontIconPath ?? ""),
                    width: width,
                    height: height,
                  ),
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.5),
                      BlendMode.darken,
                    ),
                    child: Image.file(
                      File(deepIconPath ?? ""),
                      width: width,
                      height: height,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        after: Container(
          decoration: BoxDecoration(
            color: BC.white,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.file(
                File(frontIconPath ?? ""),
                width: width,
                height: height,
              ),
            ),
          ),
        ),
        onValueChanged: onValueChanged,
      ),
    );
  }
}
