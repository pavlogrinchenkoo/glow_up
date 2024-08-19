import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColors {
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color gray = Color(0xffE3E3E3);
  static const Color darkGray = Color(0xff363636);
  static const Color boxShadow = Color(0x33000000);
  static const Color boxShadowLight = Color(0x1A000000);
  static const Color green = Color(0xff65C467);
  static const Color blue = Color(0xff00A3FF);
  static const Color red = Color(0xffFF6161);
  static const Color avatarGrey = Color(0xff777272);
  static const Color navyGrey = Color(0xFF171722);
  static const Color purple = Color(0xff6C40AE);
  static const Color lightPurple = Color(0xFFC0B0FF);
  static const Color salad = Color(0xFFD1FF6F);
  static const Color lightSalad = Color(0xFF687F37);
  static const Color lightGray = Color(0xFF55545A);
  static const Color pink = Color(0xFFF19EC6);
  static const Color purpleViolet = Color(0xFF8A00D4);
  static const Color lightGreen = Color(0xFF00D42F);
}

abstract class BC {
  static Color get white => ThemeColors.white;

  static Color get black => ThemeColors.black;

  static Color get gray => ThemeColors.gray;

  static Color get darkGray => ThemeColors.darkGray;

  static Color get boxShadow => ThemeColors.boxShadow;

  static Color get boxShadowLight => ThemeColors.boxShadowLight;

  static Color get green => ThemeColors.green;

  static Color get blue => ThemeColors.blue;

  static Color get red => ThemeColors.red;

  static Color get avatarGrey => ThemeColors.avatarGrey;

  static Color get navyGrey => ThemeColors.navyGrey;

  static Color get purple => ThemeColors.purple;

  static Color get lightPurple => ThemeColors.lightPurple;

  static Color get salad => ThemeColors.salad;

  static Color get darkSalad => ThemeColors.lightSalad;

  static Color get lightGray => ThemeColors.lightGray;

  static Color get pink => ThemeColors.pink;

  static Color get purpleViolet => ThemeColors.purpleViolet;

  static Color get lightGreen => ThemeColors.lightGreen;
}

abstract class BS {
  static TextStyle get tex80 => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.workSans().fontFamily,
      fontSize: 80,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600);

  static TextStyle get tex24 => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 24,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.bold);

  static TextStyle get tex14 => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 14,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600);

  static TextStyle get tex10 => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 10,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w400);

  static TextStyle get tex16 => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 16,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w700);

  static TextStyle get tex16WithFont400 => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 16,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w400);

  static TextStyle get showDialogText => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 16,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600);

  static TextStyle get tex14withFont400 => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 14,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w400);

  static TextStyle get tex14withFont500 => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 14,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w500);

  static TextStyle get tex14withFont700 => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 14,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w700);

  static TextStyle get indicatorText => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 55,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.bold);

  static TextStyle get tex12Text => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 12,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w400);

  static TextStyle get tex32Text => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 32,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600);

  static TextStyle get tex18Text => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 18,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.bold);

  static TextStyle get tex21Text => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 21,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.bold);

  static TextStyle get tex20Text => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 20,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.bold);

  static TextStyle get tex48Text => TextStyle(
      color: BC.black,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      fontSize: 48,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600);
}

abstract class BDuration {
  static Duration get d200 => const Duration(milliseconds: 200);

  static Duration get d100 => const Duration(milliseconds: 100);
}

abstract class BRadius {
  static BorderRadius get r2 => const BorderRadius.all(Radius.circular(2));

  static BorderRadius get r12 => const BorderRadius.all(Radius.circular(12));

  static BorderRadius get r16 => const BorderRadius.all(Radius.circular(16));

  static BorderRadius get r64 => const BorderRadius.all(Radius.circular(64));
}

abstract class BShadow {
  static List<BoxShadow> get def => [
        BoxShadow(
            color: BC.boxShadow, blurRadius: 60, offset: const Offset(2, 2))
      ];

  static List<BoxShadow> get light => [
        BoxShadow(
            color: BC.boxShadowLight,
            blurRadius: 60,
            offset: const Offset(0, 2))
      ];
}
