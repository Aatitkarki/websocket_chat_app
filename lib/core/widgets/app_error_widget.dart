import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

import '../themes/theme.dart';
import 'custom_button.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({Key? key, required this.message, this.onRetry})
      : super(key: key);

  final String message;
  final void Function()? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: AppStyles.text20PxMedium,
            ),
            30.verticalSpace,
            if (onRetry != null)
              CustomButton(label: 'Try Again', onPressed: onRetry ?? () {}),
          ],
        ),
      ),
    );
  }
}
