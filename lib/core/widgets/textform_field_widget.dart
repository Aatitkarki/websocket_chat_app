import 'package:chat_app/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../themes/theme.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    Key? key,
    required this.inputType,
    this.label,
    this.inputAction = TextInputAction.next,
    this.onSuffixPressed,
    this.obscureText = false,
    this.onChanged,
    this.errorText,
    this.filled = false,
    this.readOnly = false,
    this.value,
    this.controller,
    this.padding,
    this.validator,
    this.onFieldSubmitted,
    this.focusNode,
    this.onTap,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLines = 1,
    this.maxLength,
    this.isEnabled = true,
    this.floatingLabelBehavior,
    this.borderColor,
    this.inputFormatters,
    this.minLines,
    this.hideCounter = false,
  }) : super(key: key);

  final TextEditingController? controller;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final String? label;
  final void Function()? onSuffixPressed;
  final bool obscureText;
  final Function(String)? onChanged;
  final String? errorText;
  final bool filled;
  final bool readOnly;
  final String? value;
  final EdgeInsetsGeometry? padding;
  final String? Function(String?)? validator;
  final VoidCallback? onFieldSubmitted;
  final FocusNode? focusNode;
  final void Function()? onTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLines;
  final int? maxLength;
  final bool isEnabled;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final Color? borderColor;
  final List<TextInputFormatter>? inputFormatters;
  final int? minLines;
  final bool hideCounter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: TextFormField(
        enabled: isEnabled,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        focusNode: focusNode,
        controller: controller,
        initialValue: value,
        readOnly: readOnly,
        style: AppStyles.text14PxMedium.textDark,
        keyboardType: inputType,
        textInputAction: inputAction,
        obscureText: obscureText,
        onChanged: onChanged,
        validator: validator,
        inputFormatters: inputFormatters,
        onFieldSubmitted: (String value) {
          if (onFieldSubmitted != null) {
            onFieldSubmitted!();
          }
        },
        onTap: onTap,
        maxLines: maxLines,
        minLines: minLines,
        maxLength: maxLength,
        decoration: InputDecoration(
          labelText: label,
          alignLabelWithHint: true,
          errorText: errorText,
          errorMaxLines: 5,
          counterText: hideCounter ? '' : null,
          filled: filled,
          fillColor: AppColors.appbarBackColor,
          floatingLabelStyle: AppStyles.text10Px.textDark,
          floatingLabelBehavior: floatingLabelBehavior,
          labelStyle: AppStyles.text12Px.textHint,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          errorStyle: TextStyle(
            color: Theme.of(context).errorColor, // or any other color
          ),
          border: !filled
              ? OutlineInputBorder(
                  borderSide:
                      BorderSide(color: borderColor ?? AppColors.primary),
                  borderRadius: BorderRadius.circular(8),
                )
              : null,
          focusedBorder: !filled
              ? OutlineInputBorder(
                  borderSide:
                      BorderSide(color: borderColor ?? AppColors.primary),
                  borderRadius: BorderRadius.circular(8),
                )
              : null,
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.statusRed),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: !filled
              ? OutlineInputBorder(
                  borderSide:
                      BorderSide(color: borderColor ?? AppColors.border),
                  borderRadius: BorderRadius.circular(8),
                )
              : null,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.statusRed),
            borderRadius: BorderRadius.circular(8),
          ),
          disabledBorder: !filled
              ? OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.border),
                  borderRadius: BorderRadius.circular(8),
                )
              : null,
          suffixIcon: inputType == TextInputType.visiblePassword
              ? IconButton(
                  onPressed: onSuffixPressed,
                  icon: Icon(
                    !obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                )
              : suffixIcon != null
                  ? suffixIcon is Icon
                      ? IconButton(
                          onPressed: onSuffixPressed,
                          icon: suffixIcon!,
                        )
                      : GestureDetector(
                          onTap: onSuffixPressed,
                          child: suffixIcon,
                        )
                  : null,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
