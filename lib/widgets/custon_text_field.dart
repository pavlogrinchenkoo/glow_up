import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final String? labelText;
  final List<TextInputFormatter>? inputFormatters;
  final Color? borderColor;
  final double borderWidth;
  final double? borderRadius;
  final bool enable;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final double? verticalPadding;
  final Color? hintStyleColor;
  final bool? readOnly;
  final bool? exitingCode;
  final FocusNode? focusNode;
  final bool? autoFocus;

  const CustomTextField({
    super.key,
    required this.controller,
    this.keyboardType,
    this.labelText,
    this.prefixIcon,
    this.inputFormatters,
    this.borderColor,
    this.borderWidth = 1,
    this.borderRadius,
    this.enable = true,
    this.onTap,
    this.onChanged,
    this.verticalPadding,
    this.hintStyleColor,
    this.readOnly,
    this.exitingCode,
    this.focusNode,
    this.autoFocus,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enable ? null : () => onTap?.call(),
      borderRadius: BorderRadius.circular(borderRadius ?? AppRadius.r8),
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: 0, vertical: verticalPadding ?? 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? AppRadius.r8),
          border: Border.all(
            color: borderColor ?? BC.black,
            width: borderWidth,
          ),
          color: BC.lightGray.withOpacity(0.4),
        ),
        child: Row(
          children: [
            prefixIcon ?? const SizedBox(),
            Space.w8,
            Expanded(
              child: TextField(
                readOnly: exitingCode ?? false ? true : readOnly ?? false,
                onChanged: onChanged,
                enabled: enable,
                // inputFormatters: [
                //   UpperCaseTextFormatter(),
                //   if (inputFormatters != null) ...inputFormatters!,
                // ],
                controller: controller,
                style: BS.tex32Text.apply(color: BC.white),
                autocorrect: false,
                keyboardType: keyboardType,
                textAlign: TextAlign.center,
                cursorColor: BC.white,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  border: InputBorder.none,
                  hintText: labelText,
                  hintStyle: BS.tex32Text
                      .apply(color: hintStyleColor ?? BC.avatarGrey),
                ),
                focusNode: focusNode,
                autofocus: autoFocus ?? false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
