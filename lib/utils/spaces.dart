import 'package:flutter/material.dart';

class Space {
  static Widget get w52 => const _SpaceWidget(width: 52);

  static Widget get w40 => const _SpaceWidget(width: 40);

  static Widget get w30 => const _SpaceWidget(width: 30);

  static Widget get w25 => const _SpaceWidget(width: 25);

  static Widget get w22 => const _SpaceWidget(width: 22);

  static Widget get w20 => const _SpaceWidget(width: 20);

  static Widget get w16 => const _SpaceWidget(width: 16);

  static Widget get w12 => const _SpaceWidget(width: 12);

  static Widget get w8 => const _SpaceWidget(width: 8);

  static Widget get w4 => const _SpaceWidget(width: 4);

  static Widget get h140 => const _SpaceWidget(height: 140);

  static Widget get h96 => const _SpaceWidget(height: 96);

  static Widget get h70 => const _SpaceWidget(height: 70);

  static Widget get h50 => const _SpaceWidget(height: 50);

  static Widget get h40 => const _SpaceWidget(height: 40);

  static Widget get h32 => const _SpaceWidget(height: 32);

  static Widget get h24 => const _SpaceWidget(height: 24);

  static Widget get h20 => const _SpaceWidget(height: 20);

  static Widget get h16 => const _SpaceWidget(height: 16);

  static Widget get h10 => const _SpaceWidget(height: 10);

  static Widget get h8 => const _SpaceWidget(height: 8);

  static Widget get h4 => const _SpaceWidget(height: 4);

  static Widget get h2 => const _SpaceWidget(height: 2);
}

class _SpaceWidget extends StatelessWidget {
  const _SpaceWidget({this.width = 0, this.height = 0});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height);
  }
}

class Sizes {
  static const double scaleZero = 0;
  static const double scale = 1;

  static const double s0_1 = 0.1 * scale;
  static const double s0_5 = 0.5 * scale;
  static const double s2 = 2 * scale;
  static const double s3 = 3 * scale;
  static const double s4 = 4 * scale;
  static const double s5 = 5 * scale;
  static const double s6 = 6 * scale;
  static const double s7 = 7 * scale;
  static const double s8 = 8 * scale;
  static const double s9 = 9 * scale;
  static const double s10 = 10 * scale;
  static const double s11 = 11 * scale;
  static const double s12 = 12 * scale;
  static const double s13 = 13 * scale;
  static const double s14 = 14 * scale;
  static const double s15 = 15 * scale;
  static const double s16 = 16 * scale;
  static const double s17 = 17 * scale;
  static const double s18 = 18 * scale;
  static const double s20 = 20 * scale;
  static const double s22 = 22 * scale;
  static const double s23 = 23 * scale;
  static const double s24 = 24 * scale;
  static const double s25 = 25 * scale;
  static const double s28 = 28 * scale;
  static const double s30 = 30 * scale;
  static const double s32 = 32 * scale;
  static const double s34 = 34 * scale;
  static const double s35 = 35 * scale;
  static const double s36 = 36 * scale;
  static const double s38 = 38 * scale;
  static const double s40 = 40 * scale;
  static const double s41 = 41 * scale;
  static const double s42 = 42 * scale;
  static const double s43 = 43 * scale;
  static const double s44 = 44 * scale;
  static const double s45 = 45 * scale;
  static const double s46 = 46 * scale;
  static const double s48 = 48 * scale;
  static const double s50 = 50 * scale;
  static const double s52 = 52 * scale;
  static const double s53 = 53 * scale;
  static const double s54 = 54 * scale;
  static const double s55 = 55 * scale;
  static const double s56 = 56 * scale;
  static const double s58 = 58 * scale;
  static const double s60 = 60 * scale;
  static const double s62 = 62 * scale;
  static const double s64 = 64 * scale;
  static const double s65 = 65 * scale;
  static const double s66 = 66 * scale;
  static const double s67 = 67 * scale;
  static const double s68 = 68 * scale;
  static const double s69 = 69 * scale;
  static const double s70 = 70 * scale;
  static const double s75 = 75 * scale;
  static const double s76 = 76 * scale;
  static const double s78 = 78 * scale;
  static const double s80 = 80 * scale;
  static const double s86 = 86 * scale;
  static const double s88 = 88 * scale;
  static const double s90 = 90 * scale;
  static const double s96 = 96 * scale;
  static const double s100 = 100 * scale;
  static const double s102 = 102 * scale;
  static const double s105 = 105 * scale;
  static const double s106 = 106 * scale;
  static const double s108 = 108 * scale;
  static const double s110 = 110 * scale;
  static const double s115 = 115 * scale;
  static const double s116 = 116 * scale;
  static const double s120 = 120 * scale;
  static const double s125 = 125 * scale;
  static const double s128 = 128 * scale;
  static const double s130 = 130 * scale;
  static const double s135 = 135 * scale;
  static const double s138 = 138 * scale;
  static const double s140 = 140 * scale;
  static const double s142 = 142 * scale;
  static const double s145 = 145 * scale;
  static const double s148 = 148 * scale;
  static const double s150 = 150 * scale;
  static const double s155 = 155 * scale;
  static const double s158 = 158 * scale;
  static const double s160 = 160 * scale;
  static const double s165 = 165 * scale;
  static const double s170 = 170 * scale;
  static const double s175 = 175 * scale;
  static const double s180 = 180 * scale;
  static const double s182 = 182 * scale;
  static const double s184 = 184 * scale;
  static const double s185 = 185 * scale;
  static const double s190 = 190 * scale;
  static const double s198 = 198 * scale;
  static const double s200 = 200 * scale;
  static const double s210 = 210 * scale;
  static const double s215 = 215 * scale;
  static const double s216 = 216 * scale;
  static const double s220 = 220 * scale;
  static const double s223 = 223 * scale;
  static const double s230 = 230 * scale;
  static const double s235 = 235 * scale;
  static const double s238 = 238 * scale;
  static const double s240 = 240 * scale;
  static const double s250 = 250 * scale;
  static const double s255 = 255 * scale;
  static const double s260 = 260 * scale;
  static const double s262 = 262 * scale;
  static const double s266 = 266 * scale;
  static const double s270 = 270 * scale;
  static const double s278 = 278 * scale;
  static const double s280 = 280 * scale;
  static const double s290 = 290 * scale;
  static const double s292 = 292 * scale;
  static const double s300 = 300 * scale;
  static const double s335 = 335 * scale;
  static const double s330 = 330 * scale;
  static const double s340 = 340 * scale;
  static const double s350 = 350 * scale;
  static const double s360 = 360 * scale;
  static const double s380 = 380 * scale;
  static const double s400 = 400 * scale;
  static const double s450 = 450 * scale;
  static const double s460 = 460 * scale;
  static const double s485 = 485 * scale;
  static const double s570 = 570 * scale;
  static const double s620 = 620 * scale;
}

class AppRadius {
  static const double scale = 1;
  static const double r2 = 2 * scale;
  static const double r3 = 3 * scale;
  static const double r4 = 4 * scale;
  static const double r5 = 5 * scale;
  static const double r6 = 6 * scale;
  static const double r7 = 7 * scale;
  static const double r8 = 8 * scale;
  static const double r10 = 10 * scale;
  static const double r12 = 12 * scale;
  static const double r14 = 14 * scale;
  static const double r15 = 15 * scale;
  static const double r16 = 16 * scale;
  static const double r17 = 17 * scale;
  static const double r18 = 18 * scale;
  static const double r19 = 19 * scale;
  static const double r20 = 20 * scale;
  static const double r24 = 24 * scale;
  static const double r25 = 25 * scale;
  static const double r28 = 28 * scale;
  static const double r30 = 30 * scale;
  static const double r32 = 32 * scale;
  static const double r35 = 35 * scale;
  static const double r36 = 36 * scale;
  static const double r40 = 40 * scale;
  static const double r50 = 50 * scale;
  static const double r100 = 100 * scale;
}
