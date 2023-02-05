import 'package:flutter/material.dart';

import '../themes/theme.dart';

extension TypographyExtension on TextStyle {
  //colors
  TextStyle get primary => copyWith(color: AppColors.primary);

  TextStyle get secondary => copyWith(color: AppColors.secondary);

  TextStyle get textWhite => copyWith(color: AppColors.textWhite);

  TextStyle get textDark => copyWith(color: AppColors.textDark);

  TextStyle get textHint => copyWith(color: AppColors.textHint);

  TextStyle get textChatDark => copyWith(color: AppColors.chatDarkText);

  TextStyle get textBlue => copyWith(color: AppColors.textBlue);

  TextStyle get textLight => copyWith(color: AppColors.textLight);

  TextStyle get textGrey => copyWith(color: AppColors.textGrey);

  TextStyle get statusRed => copyWith(color: AppColors.statusRed);

  TextStyle get statusGreen => copyWith(color: AppColors.statusGreen);

  TextStyle get statusLightRed => copyWith(color: AppColors.statusLightRed);

  TextStyle get brandBackground => copyWith(color: AppColors.brandBackground);

  TextStyle get brandBackgroundLight =>
      copyWith(color: AppColors.brandBackgroundLight);

  TextStyle get white => copyWith(color: AppColors.white);

  TextStyle get black => copyWith(color: AppColors.black);

  //line height
  TextStyle lineHeight(double px) =>
      copyWith(height: AppStyles.calculateHeight(px, fontSize!));

  // letter spacing
  TextStyle spacing(double em) =>
      copyWith(height: AppStyles.calculateSpacing(em));
}
