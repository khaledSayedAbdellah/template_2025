import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../Utilities/theme_helper.dart';
import '../core/Font/font_provider.dart';

class TextStyleHelper{
  final BuildContext context;
  TextStyleHelper._(this.context);

  static TextStyleHelper of(BuildContext context) => TextStyleHelper._(context);

  double get _fSS => Provider.of<FontProvider>(context,listen: false).fontSizeScale;
  FontFamilyTypes get _fF => Provider.of<FontProvider>(context,listen: false).fontFamily;

  _fontFamily(){
    switch(_fF){
      case FontFamilyTypes.alexandria: return GoogleFonts.alexandria;
      case FontFamilyTypes.cairo: return GoogleFonts.cairo;
    }
  }

  TextStyle  getTextStyle({required double fontSize,FontWeight? fontWeight}) =>
      _fontFamily()(fontSize: (12*_fSS).sp,fontWeight: fontWeight,color: ThemeClass.of(context).darkGreyColor);


  TextStyle get s12RegTextStyle => getTextStyle(fontSize: 12);
  TextStyle get s14RegTextStyle => getTextStyle(fontSize: 14);
  TextStyle get s16RegTextStyle => getTextStyle(fontSize: 16);
  TextStyle get s22RegTextStyle => getTextStyle(fontSize: 22);
  TextStyle get s24RegTextStyle => getTextStyle(fontSize: 24);
  TextStyle get s28RegTextStyle => getTextStyle(fontSize: 28);
  TextStyle get s32RegTextStyle => getTextStyle(fontSize: 32);
  TextStyle get s36RegTextStyle => getTextStyle(fontSize: 36);
  TextStyle get s45RegTextStyle => getTextStyle(fontSize: 45);

  TextStyle get s12SemiBoldTextStyle => getTextStyle(fontSize: 12,fontWeight: FontWeight.w600);
  TextStyle get s14SemiBoldTextStyle => getTextStyle(fontSize: 14,fontWeight: FontWeight.w600);
  TextStyle get s16SemiBoldTextStyle => getTextStyle(fontSize: 16,fontWeight: FontWeight.w600);
}