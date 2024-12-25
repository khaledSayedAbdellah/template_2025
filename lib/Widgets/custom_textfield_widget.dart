import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utilities/theme_helper.dart';
import '../Utilities/text_style_helper.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscure;
  final bool? readOnly;
  final String? hint;
  final Color? backGroundColor,focusedBorderColor;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final int? maxLine,minLines;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final bool? enable, isDense;
  final Color? borderColor;
  final bool disableBorder;
  final FocusNode? unitCodeCtrlFocusNode;
  final double? borderRadiusValue, width, height;
  final EdgeInsets? insidePadding;
  final void Function(String?)? onSave;
  final Widget? prefixIcon, suffixIcon;
  final void Function(String)? onchange;
  final Function()? onSuffixTap;
  final void Function()? onTap;
  final List<TextInputFormatter>? formatter;
  final TextInputAction? textInputAction;
  final bool? expands;
  const CustomTextFieldWidget({
    super.key,
    this.isDense,
    this.style,
    this.onchange,
    this.insidePadding,
    this.validator,
    this.maxLine,
    this.hint,
    this.backGroundColor,
    this.controller,
    this.obscure = false,
    this.enable = true,
    this.readOnly = false,
    this.textInputType = TextInputType.text,
    this.borderColor,
    this.borderRadiusValue,
    this.prefixIcon,
    this.width,
    this.hintStyle,
    this.suffixIcon,
    this.onSuffixTap,
    this.height,
    this.onTap,
    this.formatter, this.unitCodeCtrlFocusNode, this.focusedBorderColor, this.onSave, this.minLines,
    this.disableBorder = false, this.textInputAction,
    this.expands,
  });




  @override
  Widget build(BuildContext context) {
    InputBorder? getBorder({double? radius,Color? color}){
      if(disableBorder) return null;
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius ?? 28.r),
        borderSide: BorderSide(color: color ?? ThemeClass.of(context).darkGreyColor,width: 1),
      );
    }

    return SizedBox(
      width: width,
      height: height??56.h,
      child: TextFormField(
        textInputAction: textInputAction,
        onFieldSubmitted: onSave,
        focusNode:unitCodeCtrlFocusNode ,
        readOnly: readOnly ?? false,
        textAlignVertical: TextAlignVertical.center,
        validator: validator,
        onTap:  onTap,
        enabled: enable,
        inputFormatters: formatter ?? [],
        obscureText: obscure ?? false,
        controller: controller,
        expands: expands??false,

        decoration: InputDecoration(
          errorStyle: const TextStyle(height: 0),
          enabledBorder: getBorder(radius: borderRadiusValue,color: borderColor),
          disabledBorder: getBorder(radius: borderRadiusValue,color: borderColor),
          focusedBorder: getBorder(radius: borderRadiusValue,color: focusedBorderColor??ThemeClass.of(context).primaryColor),
          border: getBorder(radius: borderRadiusValue,color: focusedBorderColor),
          isDense: isDense ?? false,
          prefixIconConstraints: BoxConstraints(
              minWidth: prefixIcon == null ? 0 : 48.w, maxHeight: 48.w),
          suffixIconConstraints: BoxConstraints(
              minWidth: suffixIcon == null ? 0 : 48.w, maxHeight: 24.h),
          // contentPadding: insidePadding ?? EdgeInsets.symmetric(vertical: 21.h),
          fillColor: backGroundColor,
          filled: backGroundColor != null,
          hintText: hint,
          
          prefixIcon: prefixIcon ?? SizedBox(width: 20.w,),
          suffixIcon: suffixIcon == null ? SizedBox(width: 5.w,) : InkWell(onTap: onSuffixTap,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
            child: SizedBox(width: 30.w,height: 60, child: suffixIcon),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 28.w),
          
          hintStyle: hintStyle ?? TextStyleHelper.of(context).s16SemiBoldTextStyle.copyWith(color: ThemeClass.of(context).darkGreyColor),),
        
        onChanged: onchange,
        textCapitalization: TextCapitalization.words,
        maxLines: maxLine ?? 1,
        minLines:minLines?? 1 ,
        keyboardType: textInputType,
        style: style ?? TextStyleHelper.of(context).s16SemiBoldTextStyle.copyWith(color: ThemeClass.of(context).darkGreyColor),
      ),
    );
  }
}
