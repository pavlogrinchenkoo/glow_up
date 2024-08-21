import 'package:glow_up/style.dart';
import 'package:flutter/material.dart';

class CustomBokeh extends StatelessWidget {
  final double size;
  final Alignment alignment;
  final double? scaleX, scaleY;
  final Offset? transform;
  final BoxShape? shape;
  final double? angleInRadians;
  final bool isPinkShadow;
  final bool isPurpleShadow;
  final bool blurWhiteHard;
  final bool blurWhiteSoft;
  final bool blurPinkLight;

  const CustomBokeh({
    required this.size,
    required this.alignment,
    this.scaleX,
    this.scaleY,
    this.transform,
    this.shape,
    this.angleInRadians,
    this.isPinkShadow = false,
    this.isPurpleShadow = false,
    this.blurWhiteHard = false,
    this.blurWhiteSoft = false,
    this.blurPinkLight = false,
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
                boxShadow: blurPinkLight
                    ? [CustomShadows.bokehPinkLight(context)]
                    : isPinkShadow
                        ? [CustomShadows.bokehPink(context)]
                        : blurWhiteSoft
                            ? [CustomShadows.bokehWhiteSoft(context)]
                            : blurWhiteHard
                                ? [CustomShadows.bokehWhiteHard(context)]
                                : isPurpleShadow
                                    ? [CustomShadows.bokehPurpule(context)]
                                    : [CustomShadows.bokehWhite(context)],
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
      color: BC.purple.withOpacity(0.6),
      blurRadius: 200,
    );
  }

  static BoxShadow bokehWhite(BuildContext context) {
    return BoxShadow(
      color: BC.white.withOpacity(1),
      blurRadius: 100,
    );
  }

  static BoxShadow bokehWhiteHard(BuildContext context) {
    return BoxShadow(
      color: BC.white.withOpacity(1),
      blurRadius: 200,
    );
  }

  static BoxShadow bokehWhiteSoft(BuildContext context) {
    return BoxShadow(
      color: BC.white.withOpacity(1),
      blurRadius: 300,
    );
  }

  static BoxShadow bokehPink(BuildContext context) {
    return BoxShadow(
      color: BC.pink.withOpacity(1),
      blurRadius: 100,
    );
  }

  static BoxShadow bokehPinkLight(BuildContext context) {
    return BoxShadow(
      color: BC.pink.withOpacity(1),
      blurRadius: 400,
    );
  }
}
