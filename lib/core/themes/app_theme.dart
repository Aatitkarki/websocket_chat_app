import 'dart:io';

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:chat_app/core/extensions/num_extension.dart';
import 'package:chat_app/core/extensions/typography_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_styles.dart';
import 'app_colors.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    textTheme: GoogleFonts.nunitoTextTheme(),
    useMaterial3: true,
    fontFamily: GoogleFonts.nunito().fontFamily,
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary, primary: AppColors.primary),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.scaffoldBackground,
      surfaceTintColor: AppColors.scaffoldBackground,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.scaffoldBackground,
        statusBarBrightness:
            Platform.isAndroid ? Brightness.dark : Brightness.light,
        statusBarIconBrightness:
            Platform.isAndroid ? Brightness.dark : Brightness.light,
        systemNavigationBarContrastEnforced: true,
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        color: AppColors.white,
        borderRadius: 24.rounded,
      ),
      labelPadding: EdgeInsets.symmetric(horizontal: 20.w),
      labelStyle: AppStyles.text14PxBold.primary,
      labelColor: AppColors.primary,
      unselectedLabelColor: AppColors.textLight,
      overlayColor: MaterialStateProperty.all(AppColors.transparent),
      unselectedLabelStyle: AppStyles.text14PxBold.textLight,
    ),
    splashColor: AppColors.white,
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      filled: true,
      hintStyle: AppStyles.text16Px.textGrey,
      fillColor: AppColors.white,
      constraints: BoxConstraints(
        minHeight: 44.h,
        maxWidth: double.infinity,
        minWidth: double.infinity,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
