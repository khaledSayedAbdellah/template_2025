import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utilities/theme_helper.dart';

class CustomButtonWidget extends StatelessWidget {
  final String? title;
  final Widget? titleWidget;
  final double? width,height,borderRadius,fontSize;
  final Color? backGroundColor,titleColor,borderColor;
  final FontWeight? fontWeight;
  final Function() onTap;

  const CustomButtonWidget({super.key, this.title, this.width, this.height,required this.onTap, this.backGroundColor, this.titleColor, this.borderRadius, this.fontSize, this.fontWeight, this.borderColor, this.titleWidget});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:onTap,
      child: Container(
        width: width,
        height:height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: backGroundColor??ThemeClass.of(context).primaryColor,
            borderRadius: BorderRadius.circular(borderRadius??10.w),
            border: Border.all(width: 1.w,color:borderColor?? ThemeClass.of(context).primaryColor)
        ),
        child: titleWidget??Text(title??'',style: TextStyle(
            fontSize: fontSize??16.sp,
            fontWeight:fontWeight?? FontWeight.w500,
            color:titleColor
        ),),
      ),
    );
  }
}