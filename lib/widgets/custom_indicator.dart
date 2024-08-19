import 'package:blur/blur.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  final double height;
  final double downloadIndicatorValue;
  final double strokeWidth;
  final String textProgress;
  final bool useBlur;

  const CustomIndicator({
    super.key,
    required this.height,
    required this.downloadIndicatorValue,
    required this.strokeWidth,
    required this.textProgress,
    this.useBlur = false,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.3,
      child: SizedBox(
        width: height,
        height: height,
        child: Row(
          children: [
            useBlur
                ? Stack(
                    alignment: Alignment.center,
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Blur(
                          blur: 5,
                          borderRadius: BorderRadius.circular(AppRadius.r25),
                          blurColor: BC.lightGray.withOpacity(0.1),
                          child: SizedBox(
                            width: height,
                            height: height,
                            child: CircularProgressIndicator(
                              value: downloadIndicatorValue,
                              strokeWidth: 10,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(BC.salad),
                              backgroundColor: BC.lightGray,
                            ),
                          ),
                        ),
                      ),
                      Blur(
                        blur: 4,
                        borderRadius: BorderRadius.circular(AppRadius.r25),
                        blurColor: BC.lightGray.withOpacity(0.8),
                        child: Text(
                          textProgress,
                          style: BS.tex16.apply(color: BC.white),
                        ),
                      ),
                    ],
                  )
                : Stack(
                    alignment: Alignment.center,
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: SizedBox(
                          width: height,
                          height: height,
                          child: CircularProgressIndicator(
                            value: downloadIndicatorValue,
                            strokeWidth: strokeWidth,
                            valueColor: AlwaysStoppedAnimation<Color>(BC.lightGreen),
                            backgroundColor: BC.lightGray,
                            strokeCap: StrokeCap.round,
                          ),
                        ),
                      ),
                      Text(
                        textProgress,
                        style: BS.tex16,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
