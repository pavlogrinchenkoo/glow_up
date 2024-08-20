import 'dart:io';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:glow_up/api/default_analysis/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';

class CustomShowSmallResults extends StatelessWidget {
  final bool useBlurBlock;
  final String frontIconPath;
  final S s;
  final bool isDeepScanPhoto;
  final double personalEstimate;
  final String topWorld;
  final bool useAnalysisModel;
  final DefaultAnalysisModel? defaultAnalysisModel;
  final Size frontIconSize;

  const CustomShowSmallResults({
    super.key,
    required this.useBlurBlock,
    required this.frontIconPath,
    required this.s,
    this.isDeepScanPhoto = false,
    required this.personalEstimate,
    required this.topWorld,
    this.useAnalysisModel = false,
    this.defaultAnalysisModel,
    this.frontIconSize = const Size(0, 0),
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s18),
      child: SizedBox(
        height: height / 6,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            color: BC.white.withOpacity(0.4),
            borderRadius: BorderRadius.circular(AppRadius.r20),
            border: Border.all(
              color: BC.white.withOpacity(1),
              width: 1,
            ),
          ),
          child: Row(
            children: <Widget>[
              Space.w8,
              if (frontIconPath != "" && File(frontIconPath).existsSync())
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r20),
                      child: Image.file(
                        File(frontIconPath),
                        width: height / 7.7,
                        height: height / 7.7,
                        fit: BoxFit.cover,
                      ),
                    ),
                    if (useAnalysisModel == true)
                      ..._buildLandmarks(
                          context, height / 7.7, height / 7.7, frontIconSize),
                  ],
                ),
              if (frontIconPath == "" || !File(frontIconPath).existsSync())
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppRadius.r20),
                  child: Container(
                    width: height / 7.7,
                    height: height / 7.7,
                    color: BC.lightGray,
                  ),
                ),
              SizedBox(
                width: width / 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          isDeepScanPhoto
                              ? Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: Sizes.s16,
                                      vertical: Sizes.s4),
                                  decoration: BoxDecoration(
                                    color: BC.purpleViolet,
                                    borderRadius:
                                        BorderRadius.circular(AppRadius.r40),
                                  ),
                                  child: Text(
                                    s.deepScan,
                                    style: BS.tex12Text.apply(color: BC.white),
                                  ),
                                )
                              : const SizedBox.shrink(),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: s.youAreA,
                                  style: BS.tex21Text,
                                ),
                                const WidgetSpan(
                                  child: SizedBox(width: Sizes.s8),
                                ),
                                useBlurBlock
                                    ? WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Transform.translate(
                                          offset: const Offset(0, -Sizes.s3),
                                          child: Blur(
                                            blur: 6,
                                            borderRadius: BorderRadius.circular(
                                                AppRadius.r20),
                                            blurColor:
                                                BC.lightGray.withOpacity(0.1),
                                            child: Text(
                                              "$personalEstimate/10",
                                              style: BS.tex32Text
                                                  .apply(color: BC.lightGreen),
                                            ),
                                          ),
                                        ),
                                      )
                                    : TextSpan(
                                        text: "$personalEstimate/10",
                                        style:
                                            BS.tex32Text.apply(color: BC.lightGreen),
                                      ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Space.h4,
                  Text(
                    topWorld,
                    style: BS.tex16,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildLandmarks(
      BuildContext context, double imageWidth, double imageHeight, imageSize) {
    final faceRect = defaultAnalysisModel?.face_rectangle;
    final landmarks = defaultAnalysisModel?.landmark;

    if (faceRect == null || landmarks == null) {
      return [];
    }

    return [
      _buildPoint(
          landmarks.contour_chin, faceRect, imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.contour_left1, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_left2, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_left3, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_left4, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_left5, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_left6, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_left7, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_left8, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_left9, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_right1, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_right2, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_right3, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_right4, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_right5, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_right6, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_right7, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_right8, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.contour_right9, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.left_eye_bottom, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.left_eye_center, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.left_eye_left_corner, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.left_eye_lower_left_quarter, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.left_eye_lower_right_quarter, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.left_eye_pupil, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.left_eye_right_corner, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(
          landmarks.left_eye_top, faceRect, imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.left_eye_upper_left_quarter, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.left_eye_upper_right_quarter, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.left_eyebrow_left_corner, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.left_eyebrow_lower_left_quarter, faceRect,
          imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.left_eyebrow_lower_middle, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.left_eyebrow_lower_right_quarter, faceRect,
          imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.left_eyebrow_right_corner, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.left_eyebrow_upper_left_quarter, faceRect,
          imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.left_eyebrow_upper_middle, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.left_eyebrow_upper_right_quarter, faceRect,
          imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.mouth_left_corner, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.mouth_lower_lip_bottom, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.mouth_lower_lip_left_contour1, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.mouth_lower_lip_left_contour2, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.mouth_lower_lip_left_contour3, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.mouth_lower_lip_right_contour1, faceRect,
          imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.mouth_lower_lip_right_contour2, faceRect,
          imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.mouth_lower_lip_right_contour3, faceRect,
          imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.mouth_lower_lip_top, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.mouth_right_corner, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.mouth_upper_lip_bottom, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.mouth_upper_lip_left_contour1, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.mouth_upper_lip_left_contour2, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.mouth_upper_lip_left_contour3, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.mouth_upper_lip_right_contour1, faceRect,
          imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.mouth_upper_lip_right_contour2, faceRect,
          imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.mouth_upper_lip_right_contour3, faceRect,
          imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.mouth_upper_lip_top, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.nose_contour_left1, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.nose_contour_left2, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.nose_contour_left3, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.nose_contour_lower_middle, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.nose_contour_right1, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.nose_contour_right2, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.nose_contour_right3, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(
          landmarks.nose_left, faceRect, imageWidth, imageHeight, imageSize),
      _buildPoint(
          landmarks.nose_right, faceRect, imageWidth, imageHeight, imageSize),
      _buildPoint(
          landmarks.nose_tip, faceRect, imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.right_eye_bottom, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.right_eye_center, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.right_eye_left_corner, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.right_eye_lower_left_quarter, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.right_eye_lower_right_quarter, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.right_eye_pupil, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.right_eye_right_corner, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.right_eye_top, faceRect, imageWidth, imageHeight,
          imageSize),
      _buildPoint(landmarks.right_eye_upper_left_quarter, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.right_eye_upper_right_quarter, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.right_eyebrow_left_corner, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.right_eyebrow_lower_left_quarter, faceRect,
          imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.right_eyebrow_lower_middle, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.right_eyebrow_lower_right_quarter, faceRect,
          imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.right_eyebrow_right_corner, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.right_eyebrow_upper_left_quarter, faceRect,
          imageWidth, imageHeight, imageSize),
      _buildPoint(landmarks.right_eyebrow_upper_middle, faceRect, imageWidth,
          imageHeight, imageSize),
      _buildPoint(landmarks.right_eyebrow_upper_right_quarter, faceRect,
          imageWidth, imageHeight, imageSize),
    ];
  }

  Widget _buildPoint(
      PointModel? point,
      FaceRectangleModel faceRect,
      double currentImageWidgetWidth,
      double currentImageWidgetHeight,
      Size imageSize) {
    if (point == null) return const SizedBox.shrink();

    final double scaleX = currentImageWidgetWidth / imageSize.width;
    final double scaleY = currentImageWidgetHeight / imageSize.height;

    final double x = (point.x.toDouble()) * scaleX;
    final double y = (point.y.toDouble()) * scaleY;

    return Positioned(
      left: x,
      top: y,
      child: Container(
        width: 2,
        height: 2,
        decoration: BoxDecoration(
          color: BC.green,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
