import 'dart:io';

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:chat_app/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';

import '../themes/app_styles.dart';
import '../themes/app_colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.label,
      required this.onPressed,
      this.removeSplash = false,
      this.backgroundColor = AppColors.primary,
      this.disabledColor = AppColors.textGrey,
      this.splashColor = AppColors.textGrey,
      this.labelStyle,
      this.textColor = AppColors.white,
      this.loading = false,
      this.isDisabled = false,
      this.fullWidth = true,
      this.height = 48,
      this.padding})
      : children = [
          loading
              ? _ButtonLoading(
                  loadingColor: textColor,
                )
              : Text(
                  label,
                  style: labelStyle?.copyWith(
                          color: isDisabled
                              ? textColor.withOpacity(0.6)
                              : textColor) ??
                      AppStyles.text14PxSemiBold.copyWith(
                          color: isDisabled
                              ? textColor.withOpacity(0.6)
                              : textColor),
                )
        ];

  CustomButton.icon({
    super.key,
    required this.label,
    required this.onPressed,
    required Widget icon,
    this.removeSplash = false,
    this.backgroundColor = AppColors.primary,
    this.disabledColor = AppColors.textGrey,
    this.splashColor = AppColors.textGrey,
    this.labelStyle,
    this.textColor = AppColors.primary,
    this.loading = false,
    this.isDisabled = false,
    this.fullWidth = true,
    this.height = 48,
    double gap = 8,
    bool rightIcon = false,
  }) : children = [
          if (loading)
            _ButtonLoading(
              loadingColor: textColor,
            )
          else ...[
            if (!rightIcon) ...[
              icon,
              gap.horizontalSpace,
            ],
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  label,
                  style: labelStyle?.copyWith(
                          color: isDisabled
                              ? textColor.withOpacity(0.6)
                              : textColor) ??
                      AppStyles.text16PxSemiBold.copyWith(
                          color: isDisabled
                              ? textColor.withOpacity(0.6)
                              : textColor),
                ),
              ),
            ),
            if (rightIcon) ...[
              gap.horizontalSpace,
              icon,
            ],
          ]
        ];

  CustomButton.iconText({
    super.key,
    required this.label,
    required this.onPressed,
    required Widget icon,
    this.removeSplash = false,
    this.backgroundColor = AppColors.transparent,
    this.disabledColor = AppColors.transparent,
    this.splashColor = AppColors.textGrey,
    this.labelStyle,
    this.textColor = AppColors.primary,
    this.loading = false,
    this.isDisabled = true,
    this.fullWidth = false,
    this.height = 48,
    double gap = 8,
    bool rightIcon = false,
  }) : children = [
          if (loading)
            _ButtonLoading(
              loadingColor: textColor,
            )
          else ...[
            if (!rightIcon) ...[
              icon,
              gap.horizontalSpace,
            ],
            Text(
              label,
              style: labelStyle?.copyWith(
                      color: isDisabled
                          ? textColor.withOpacity(0.6)
                          : textColor) ??
                  AppStyles.text16PxSemiBold.copyWith(
                      color:
                          isDisabled ? textColor.withOpacity(0.6) : textColor),
            ),
            if (rightIcon) ...[
              gap.horizontalSpace,
              icon,
            ],
          ]
        ];

  CustomButton.text({
    super.key,
    required this.label,
    required this.onPressed,
    this.removeSplash = false,
    this.backgroundColor = AppColors.transparent,
    this.disabledColor = AppColors.transparent,
    this.splashColor = AppColors.textGrey,
    this.labelStyle,
    this.textColor = AppColors.primary,
    this.loading = false,
    this.isDisabled = true,
    this.fullWidth = false,
    this.height = 48,
  }) : children = [
          if (loading)
            _ButtonLoading(
              loadingColor: textColor,
            )
          else
            Text(
              label,
              style: labelStyle?.copyWith(
                      color: isDisabled
                          ? textColor.withOpacity(0.6)
                          : textColor) ??
                  AppStyles.text16PxSemiBold.copyWith(
                      color:
                          isDisabled ? textColor.withOpacity(0.6) : textColor),
            )
        ];

  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color disabledColor;
  final bool removeSplash;
  final Color splashColor;
  final Color textColor;
  final TextStyle? labelStyle;
  final bool loading;
  final bool isDisabled;
  final bool fullWidth;
  final double height;
  final List<Widget> children;
  EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isDisabled ? disabledColor : backgroundColor,
      borderRadius: 8.rounded,
      borderOnForeground: true,
      clipBehavior: Clip.antiAlias,
      type: MaterialType.button,
      child: InkWell(
        onTap: (isDisabled || loading) ? null : onPressed,
        splashColor: splashColor.withOpacity(0.4),
        splashFactory: removeSplash ? NoSplash.splashFactory : null,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.linearToEaseOut,
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
          height: height,
          child: Row(
            mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}

class _ButtonLoading extends StatelessWidget {
  const _ButtonLoading({
    this.loadingColor = AppColors.white,
  });

  final Color loadingColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 22.r,
      height: 22.r,
      child: CircularProgressIndicator.adaptive(
        backgroundColor:
            Platform.isAndroid ? AppColors.secondary : loadingColor,
        valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 1.8,
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  CustomOutlinedButton(
      {super.key,
      required this.label,
      required this.onPressed,
      this.borderColor = AppColors.primary,
      this.disabledColor = AppColors.textGrey,
      this.splashColor = AppColors.textGrey,
      this.labelStyle,
      this.textColor = AppColors.primary,
      this.loading = false,
      this.isDisabled = false,
      this.fullWidth = false,
      this.height = 48,
      this.padding})
      : children = [
          if (loading)
            const _ButtonLoading(
              loadingColor: Colors.red, // textColor,
            )
          else
            Text(
              label,
              style: labelStyle?.copyWith(
                      color: isDisabled
                          ? textColor.withOpacity(0.6)
                          : textColor) ??
                  AppStyles.text14PxSemiBold.copyWith(
                      color:
                          isDisabled ? textColor.withOpacity(0.6) : textColor),
            )
        ];

  CustomOutlinedButton.icon({
    super.key,
    required this.label,
    required this.onPressed,
    required Widget icon,
    bool rightIcon = false,
    this.borderColor = AppColors.primary,
    this.disabledColor = AppColors.textGrey,
    this.splashColor = AppColors.textGrey,
    this.labelStyle,
    this.textColor = AppColors.primary,
    this.loading = false,
    this.isDisabled = true,
    this.fullWidth = false,
    this.height = 48,
    double gap = 8,
  }) : children = [
          if (loading)
            _ButtonLoading(
              loadingColor: textColor,
            )
          else ...[
            if (!rightIcon) ...[
              icon,
              gap.horizontalSpace,
            ],
            Text(
              label,
              style: labelStyle?.copyWith(
                      color: isDisabled
                          ? textColor.withOpacity(0.6)
                          : textColor) ??
                  AppStyles.text14PxSemiBold.copyWith(
                      color:
                          isDisabled ? textColor.withOpacity(0.6) : textColor),
            ),
            if (rightIcon) ...[
              gap.horizontalSpace,
              icon,
            ],
          ]
        ];

  final String label;
  final VoidCallback onPressed;
  final Color borderColor;
  final Color disabledColor;
  final Color splashColor;
  final Color textColor;
  final TextStyle? labelStyle;
  final bool loading;
  final bool isDisabled;
  final bool fullWidth;
  final double height;
  final List<Widget> children;
  EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: 8.rounded,
        side: BorderSide(
          color: isDisabled ? disabledColor : borderColor,
          width: 1.r,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      type: MaterialType.button,
      child: InkWell(
        onTap: (isDisabled || loading) ? null : onPressed,

        // splashColor: splashColor.withOpacity(0.4),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.linearToEaseOut,
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
          height: height,
          child: Row(
            mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}
