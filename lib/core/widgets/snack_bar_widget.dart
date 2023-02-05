import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

import '../extensions/extensions.dart';
import '../themes/theme.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget(
      {super.key,
      required this.message,
      this.error = false,
      this.subMessage,
      this.titleStyle});

  final String message;
  final bool error;
  final String? subMessage;
  final TextStyle? titleStyle;

  Color get bgColor => error ? AppColors.fabRedBackground : AppColors.primary;

  Color get textColor => AppColors.white;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 10.w,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.horizontal(left: 10.circular),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message,
                    style: titleStyle ??
                        AppStyles.text14Px.copyWith(color: textColor),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (subMessage != null) ...[
                    3.verticalSpace,
                    Text(
                      subMessage ?? '',
                      style: AppStyles.text12Px.copyWith(color: textColor),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
