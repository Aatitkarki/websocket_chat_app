import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

import '../themes/theme.dart';
import '../widgets/snack_bar_widget.dart';
import 'num_extension.dart';

extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  Size get size => MediaQuery.of(this).size;

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  void showSnackBar({
    required String message,
    bool error = false,
    String? subText,
    TextStyle? titleStyle,
  }) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: SnackBarWidget(
            message: message,
            error: error,
            subMessage: subText,
            titleStyle: titleStyle,
          ),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: 10.rounded,
          ),
          backgroundColor:
              error ? AppColors.statusLightRed : AppColors.brandBackgroundLight,
          padding: EdgeInsets.zero,
          elevation: 0,
          duration: const Duration(seconds: 3),
          margin: EdgeInsets.all(20.r),
        ),
      );
  }
}
