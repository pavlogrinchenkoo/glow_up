import 'package:glow_up/style.dart';
import 'package:flutter/material.dart';

class CustomBokeh extends StatelessWidget {
  final double size;
  final Alignment alignment;
  final double? scaleX, scaleY;
  final Offset? transform;
  final BoxShape? shape;
  final double? angleInRadians;
  final bool isPurpleShadow;

  const CustomBokeh({
    required this.size,
    required this.alignment,
    this.scaleX,
    this.scaleY,
    this.transform,
    this.shape,
    this.angleInRadians,
    this.isPurpleShadow = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Transform.translate(
        offset: transform != null ? transform! : Offset.zero,
        child: Transform.rotate(
          angle: angleInRadians ?? 0,
          child: Transform.scale(
            scaleX: scaleX ?? 1,
            scaleY: scaleY ?? 1,
            child: Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: shape ?? BoxShape.circle,
                boxShadow: isPurpleShadow
                    ? [CustomShadows.bokehPurpule(context)]
                    : [CustomShadows.bokehSalad(context)],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomShadows {
  static BoxShadow bokehPurpule(BuildContext context) {
    return BoxShadow(
      color: BC.white.withOpacity(1),
      blurRadius: 200,
    );
  }

  static BoxShadow bokehSalad(BuildContext context) {
    return BoxShadow(
      color: BC.navyGrey.withOpacity(1),
      blurRadius: 200,
    );
  }
}
