import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CoreTextField extends StatelessWidget {
  final bool readOnly;
  final bool obscureText;
  final String? labelText;
  final double? fontSize;
  final int? maxLines;
  final int? minLines;
  final Color? fillColor;
  final Color? textColor;
  final String? helperText;
  final FocusNode? focusNode;
  final Widget? suffixIcon;
  final Color? prefixIconColor;
  final IconData? prefixIcon;
  final String? suffixText;
  final String? hintText;
  final double? prefixIconSize;
  final void Function()? onTap;
  final Color? hintTextColor;
  final void Function(String)? onSubmit;
  final void Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const CoreTextField({
    super.key,
    this.readOnly = false,
    this.obscureText = false,
    this.labelText,
    this.prefixIcon,
    this.helperText,
    this.fontSize,
    this.maxLines = 1,
    this.minLines = 1,
    this.focusNode,
    this.onTap,
    this.fillColor,
    this.onSubmit,
    this.textColor,
    this.onChanged,
    this.prefixIconColor,
    this.suffixText,
    this.prefixIconSize = 20,
    this.suffixIcon,
    this.inputFormatters,
    this.controller,
    this.validator,
    this.keyboardType,
    this.hintTextColor,
    this.hintText,
    this.textInputAction = TextInputAction.next,
  });

  static OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide:
        BorderSide(width: 0, color: coreTextFieldBackgroundColor.withValues(alpha:.67),),
  );

  static OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(width: 0, color: coreTextFieldBackgroundColor,),
  );

  static OutlineInputBorder focusedErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(width: 0, color: coreTextFieldBackgroundColor),
  );
  static OutlineInputBorder errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide:
        const BorderSide(width: 1, color: redAccentColor,),
  );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Material(
        elevation: 10,
        shadowColor: coreTextFieldShadowColor,
        surfaceTintColor: coreTextFieldShadowColor,
        color: coreTextFieldBackgroundColor,
        child: TextFormField(
          onTap: onTap,
          cursorHeight: 20,
          autocorrect: false,
          minLines: minLines,
          readOnly: readOnly,
          maxLines: maxLines,
          focusNode: focusNode,
          validator: validator,
          controller: controller,
          obscureText: obscureText,
          onFieldSubmitted: onSubmit,
          keyboardType: keyboardType,
          cursorColor: coreTextFieldCursorColor,
          textInputAction: textInputAction,
          inputFormatters: inputFormatters,
          onChanged: onChanged,
          // style: AppTextTheme.text16.copyWith(
          //   fontSize: fontSize,
          //   color: textColor ?? AppColors.appTextPrimaryColor,
          // ),
          decoration: InputDecoration(
            isDense: true,
            labelText: labelText,
            hintText: hintText,
            suffixIcon: suffixIcon,
            hintStyle: AppTextTheme.text16.copyWith(
              color: hintTextColor ?? secondaryTextColor,
            ),
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            fillColor: fillColor ?? coreTextFieldBackgroundColor,
            prefixIcon: prefixIcon != null
                ? Icon(
                    prefixIcon,
                    size: prefixIconSize,
                    color: prefixIconColor ?? coreTextFieldDefaultIconColor,
                  )
                : null,
            suffixText: suffixText,
            helperText: helperText,
            errorBorder: errorBorder,
            enabledBorder: enabledBorder,
            focusedBorder: focusedBorder,
            focusedErrorBorder: focusedErrorBorder,
            // suffixStyle:
            //     AppTextTheme.text18.copyWith(fontWeight: FontWeight.w600),
            // helperStyle: AppTextTheme.text14
            //     .copyWith(fontSize: 12, color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
