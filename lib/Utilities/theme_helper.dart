import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/Theme/theme_model.dart';
import '../core/Theme/theme_provider.dart';

class ThemeClass extends ThemeModel{

  static ThemeModel of(BuildContext context) => Provider.of<ThemeProvider>(context,listen: false).appTheme;


  ThemeClass.defaultTheme({
    super.isDark= false,
    super.primaryColor= Colors.blue,
    super.accentColor= Colors.blueGrey,
    super.backGroundColor= Colors.white,
    super.darkGreyColor= const Color(0xff555555),
    super.lightGreyColor= const Color(0xffaaaaaa),
    super.warningColor= Colors.red,
  });
}