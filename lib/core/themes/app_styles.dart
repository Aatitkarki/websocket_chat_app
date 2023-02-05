import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  // text 7px
  //regular
  static TextStyle text8Px = GoogleFonts.nunito(
    fontSize: 8.sp,
    height: calculateHeight(7, 8),
    fontStyle: FontStyle.normal,
  );

  // text 9px
  //regular
  static TextStyle text9Px = GoogleFonts.nunito(
    fontSize: 9.sp,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
  );

  //medium
  static TextStyle text9PxMedium = GoogleFonts.nunito(
    fontSize: 9.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
  );

  //SemiBold
  static TextStyle text9PxSemiBold = GoogleFonts.nunito(
    fontSize: 9.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
  );

  //bold
  static TextStyle text9PxBold = GoogleFonts.nunito(
    fontSize: 9.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
  );

  // text 10px
  //regular
  static TextStyle text10Px = GoogleFonts.nunito(
    fontSize: 10.sp,
    height: calculateHeight(12, 10),
    fontStyle: FontStyle.normal,
  );

  //medium
  static TextStyle text10PxMedium = GoogleFonts.nunito(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(12, 10),
    fontStyle: FontStyle.normal,
  );

  //SemiBold
  static TextStyle text10PxSemiBold = GoogleFonts.nunito(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(12, 10),
    fontStyle: FontStyle.normal,
  );

  //bold
  static TextStyle text10PxBold = GoogleFonts.nunito(
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(12, 10),
    fontStyle: FontStyle.normal,
  );

  // text 12px
  //regular
  static TextStyle text12Px = GoogleFonts.nunito(
    fontSize: 12.sp,
    height: calculateHeight(14, 12),
    fontStyle: FontStyle.normal,
  );

  //medium
  static TextStyle text12PxMedium = GoogleFonts.nunito(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(14, 12),
    fontStyle: FontStyle.normal,
  );

  //SemiBold
  static TextStyle text12PxSemiBold = GoogleFonts.nunito(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(14, 12),
    fontStyle: FontStyle.normal,
  );

  //bold
  static TextStyle text12PxBold = GoogleFonts.nunito(
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(14, 12),
    fontStyle: FontStyle.normal,
  );

  // text 13px
  //regular
  static TextStyle text13Px = GoogleFonts.nunito(
    fontSize: 13.sp,
    height: calculateHeight(17, 13),
    fontStyle: FontStyle.normal,
  );

  //medium
  static TextStyle text13PxMedium = GoogleFonts.nunito(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(17, 13),
    fontStyle: FontStyle.normal,
  );

  //SemiBold
  static TextStyle text13PxSemiBold = GoogleFonts.nunito(
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(17, 13),
    fontStyle: FontStyle.normal,
  );

  //bold
  static TextStyle text13PxBold = GoogleFonts.nunito(
    fontSize: 13.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(17, 13),
    fontStyle: FontStyle.normal,
  );

  // text 14px
  //regular
  static TextStyle text14Px = GoogleFonts.nunito(
    fontSize: 14.sp,
    height: calculateHeight(17, 14),
    fontStyle: FontStyle.normal,
  );

  //medium
  static TextStyle text14PxMedium = GoogleFonts.nunito(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(17, 14),
    fontStyle: FontStyle.normal,
  );

  //SemiBold
  static TextStyle text14PxSemiBold = GoogleFonts.nunito(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(17, 14),
    fontStyle: FontStyle.normal,
  );

  //bold
  static TextStyle text14PxBold = GoogleFonts.nunito(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(17, 14),
    fontStyle: FontStyle.normal,
  );

  //text 15px
  //SemiBold
  static TextStyle text15PxSemiBold = GoogleFonts.nunito(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(16, 13),
    fontStyle: FontStyle.normal,
  );

  // text 16px
  //regular
  static TextStyle text16Px = GoogleFonts.nunito(
    fontSize: 16.sp,
    height: calculateHeight(19, 16),
    fontStyle: FontStyle.normal,
  );

  //medium
  static TextStyle text16PxMedium = GoogleFonts.nunito(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(19, 16),
    fontStyle: FontStyle.normal,
  );

  //SemiBold
  static TextStyle text16PxSemiBold = GoogleFonts.nunito(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(19, 16),
    fontStyle: FontStyle.normal,
  );

  //bold
  static TextStyle text16PxBold = GoogleFonts.nunito(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(19, 16),
    fontStyle: FontStyle.normal,
  );

  // text 18px
  //regular
  static TextStyle text18Px = GoogleFonts.nunito(
    fontSize: 18.sp,
    height: calculateHeight(21, 18),
    fontStyle: FontStyle.normal,
  );

  //medium
  static TextStyle text18PxMedium = GoogleFonts.nunito(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(21, 18),
    fontStyle: FontStyle.normal,
  );

  //SemiBold
  static TextStyle text18PxSemiBold = GoogleFonts.nunito(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(21, 18),
    fontStyle: FontStyle.normal,
  );

  //bold
  static TextStyle text18PxBold = GoogleFonts.nunito(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(21, 18),
    fontStyle: FontStyle.normal,
  );

  // text 20px
  //regular
  static TextStyle text20Px = GoogleFonts.nunito(
    fontSize: 20.sp,
    height: calculateHeight(24, 20),
    fontStyle: FontStyle.normal,
  );

  //medium
  static TextStyle text20PxMedium = GoogleFonts.nunito(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(24, 20),
    fontStyle: FontStyle.normal,
  );

  //SemiBold
  static TextStyle text20PxSemiBold = GoogleFonts.nunito(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(24, 20),
    fontStyle: FontStyle.normal,
  );

  //bold
  static TextStyle text20PxBold = GoogleFonts.nunito(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(24, 20),
    fontStyle: FontStyle.normal,
  );

  // text 24px
  //regular
  static TextStyle text24Px = GoogleFonts.nunito(
    fontSize: 24.sp,
    height: calculateHeight(28, 24),
    fontStyle: FontStyle.normal,
  );

  //medium
  static TextStyle text24PxMedium = GoogleFonts.nunito(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(28, 24),
    fontStyle: FontStyle.normal,
  );

  //SemiBold
  static TextStyle text24PxSemiBold = GoogleFonts.nunito(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(28, 24),
    fontStyle: FontStyle.normal,
  );

  //bold
  static TextStyle text24PxBold = GoogleFonts.nunito(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(28, 24),
    fontStyle: FontStyle.normal,
  );

  // text 36px
  //regular
  static TextStyle text36Px = GoogleFonts.nunito(
    fontSize: 36.sp,
    height: calculateHeight(43, 36),
    fontStyle: FontStyle.normal,
    letterSpacing: calculateSpacing(-0.02),
  );

  //medium
  static TextStyle text36PxMedium = GoogleFonts.nunito(
    fontSize: 36.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(43, 36),
    fontStyle: FontStyle.normal,
    letterSpacing: calculateSpacing(-0.02),
  );

  //SemiBold
  static TextStyle text36PxSemiBold = GoogleFonts.nunito(
    fontSize: 36.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(43, 36),
    fontStyle: FontStyle.normal,
    letterSpacing: calculateSpacing(-0.02),
  );

  //bold
  static TextStyle text36PxBold = GoogleFonts.nunito(
    fontSize: 36.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(43, 36),
    fontStyle: FontStyle.normal,
    letterSpacing: calculateSpacing(-0.02),
  );

  //bold
  static TextStyle text56PxBold = GoogleFonts.nunito(
    fontSize: 56.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(67, 56),
    fontStyle: FontStyle.normal,
  );

  //bold
  static TextStyle text40PxBold = GoogleFonts.nunito(
    fontSize: 40.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(48, 40),
    fontStyle: FontStyle.normal,
  );

  // calculate line height of text
  static double calculateHeight(double height, double fontSize) {
    return height.h / fontSize.sp;
  }

  static double calculateSpacing(double em) {
    return 16 * em;
  }
}
