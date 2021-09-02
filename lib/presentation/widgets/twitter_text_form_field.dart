import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twitter/domain/core/constant/color_constant.dart';
import 'package:twitter/presentation/widgets/ui_helper.dart';

class TwitterTextFormField extends StatelessWidget {
  final bool underLineBorder;
  final void Function(String)? onFieldSubmitted;
  final String? hintText;
  final FocusNode? focusnode;
  final double? shadowContainerHeight;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final bool obscureText;
  final List<BoxShadow>? boxShadow;
  final String? Function(String?)? onChanged;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;
  final int? maxLines;
  final int? maxLength;
  final bool needResizeContainerText;
  final bool enabled;
  final String initialValue;
  final List<TextInputFormatter> inputFormatters;
  final TextCapitalization textCapitalization;

  const TwitterTextFormField({
    Key? key,
    this.underLineBorder = true,
    this.boxShadow,
    this.focusnode,
    this.hintText,
    this.suffixIcon,
    this.onChanged,
    this.maxLines = 1,
    this.maxLength,
    this.initialValue = '',
    this.inputFormatters = const [],
    this.prefixIcon,
    this.hintStyle,
    this.keyboardType,
    this.textInputAction,
    this.shadowContainerHeight,
    this.style,
    this.enabled = true,
    this.obscureText = false,
    this.needResizeContainerText = true,
    this.validator,
    this.controller,
    this.onTap,
    this.onFieldSubmitted,
    this.textCapitalization = TextCapitalization.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double containerHeight =
        maxLines! > 1 ? UIHelper.setHeight(100 * maxLines!.toDouble() / 1.7) : UIHelper.setHeight(100);
    return Stack(
      children: [
        Container(
          height: shadowContainerHeight ?? containerHeight,
          decoration: BoxDecoration(
            boxShadow: boxShadow ?? [],
          ),
        ),
        Container(
          height: needResizeContainerText ? null : UIHelper.mediaHeight(context, 0.1),
          child: TextFormField(
            textCapitalization: textCapitalization,
            focusNode: focusnode,
            textAlignVertical: TextAlignVertical.center,
            initialValue: controller == null ? initialValue : null,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            onTap: onTap,
            onChanged: onChanged,
            textAlign: TextAlign.left,
            inputFormatters: keyboardType == TextInputType.number
                ? [
                    FilteringTextInputFormatter.digitsOnly,
                    FilteringTextInputFormatter.deny(" "),
                    if (maxLength != null) LengthLimitingTextInputFormatter(maxLength)
                  ]
                : inputFormatters,
            maxLength: maxLength,
            enabled: enabled,
            style: Theme.of(context).textTheme.bodyText2,
            controller: controller,
            validator: validator,
            maxLines: maxLines,
            obscureText: obscureText,
            onFieldSubmitted: onFieldSubmitted,
            autovalidateMode: AutovalidateMode.always,
            decoration: InputDecoration(
              errorStyle: Theme.of(context).textTheme.caption!.copyWith(color: Colors.red),
              isDense: true,
              suffixIcon: suffixIcon,
              enabled: enabled,
              prefixIcon: prefixIcon,
              fillColor: enabled ? ColorConstant.whiteColor : Colors.grey[100],
              filled: true,
              focusedBorder: underLineBorder
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConstant.primary,
                      ),
                    )
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(UIHelper.setWidth(18)),
                      borderSide: BorderSide(
                        color: ColorConstant.primary,
                      ),
                    ),
              disabledBorder: underLineBorder
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConstant.grey.withOpacity(0.8),
                      ),
                    )
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(UIHelper.setWidth(18)),
                      borderSide: BorderSide(
                        color: ColorConstant.grey.withOpacity(0.8),
                      ),
                    ),
              focusedErrorBorder: underLineBorder
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    )
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(UIHelper.setWidth(18)),
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
              errorMaxLines: 2,
              errorBorder: underLineBorder
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    )
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(UIHelper.setFont(18)),
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
              enabledBorder: underLineBorder
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConstant.grey.withOpacity(0.7),
                      ),
                    )
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(UIHelper.setFont(30)),
                      borderSide: BorderSide(
                        color: ColorConstant.grey.withOpacity(0.7),
                      ),
                    ),
              hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(color: ColorConstant.grey.withOpacity(0.7)),
              hintText: hintText,
            ),
          ),
        ),
      ],
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return newValue.copyWith(
      text: newValue.text.toUpperCase(),
    );
  }
}
