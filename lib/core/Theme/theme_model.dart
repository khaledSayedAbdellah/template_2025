import 'package:flutter/material.dart';
import '../../Utilities/shared_preferences.dart';
import '../../Utilities/theme_helper.dart';


class ThemeModel extends ThemeExtension<ThemeModel>{

  static ThemeModel defaultTheme = ThemeClass.defaultTheme();

  final bool isDark;
  final Color primaryColor;
  final Color accentColor;
  final Color backGroundColor;
  final Color darkGreyColor;
  final Color lightGreyColor;
  final Color warningColor;


  ThemeModel({
    this.isDark = false,
    required this.primaryColor,
    required this.accentColor,
    required this.backGroundColor,
    required this.darkGreyColor,
    required this.lightGreyColor,
    required this.warningColor,
});

  @override
  ThemeModel copyWith({
    bool? isDark,
    Color? primaryColor,
    Color? accentColor,
    Color? backGroundColor,
    Color? darkGreyColor,
    Color? lightGreyColor,
    Color? warningColor,
}) {
    return ThemeModel(
      isDark: isDark??this.isDark,
      primaryColor: primaryColor??this.primaryColor,
      accentColor: accentColor??this.accentColor,
      backGroundColor: backGroundColor??this.backGroundColor,
      darkGreyColor: darkGreyColor??this.darkGreyColor,
      lightGreyColor: lightGreyColor??this.lightGreyColor,
      warningColor: warningColor??this.warningColor,
    );
  }

  factory ThemeModel.fromJson(Map<String, dynamic> json) => ThemeModel(
    isDark: json["isDark"],
    primaryColor: Color(json["primaryColor"]),
    accentColor: Color(json["accentColor"]),
    backGroundColor: Color(json["backGroundColor"]),
    darkGreyColor: Color(json["darkGreyColor"]),
    lightGreyColor: Color(json["lightGreyColor"]),
    warningColor: Color(json["warningColor"]),
  );

  Map<String, dynamic> toJson() => {
    "isDark": isDark,
    "primaryColor": primaryColor.value,
    "accentColor": accentColor.value,
    "backGroundColor": backGroundColor.value,
    "darkGreyColor": darkGreyColor.value,
    "lightGreyColor": lightGreyColor.value,
    "warningColor": warningColor.value,
  };


  @override
  ThemeModel lerp(ThemeExtension<ThemeModel>? other, double t) {
    if (other is! ThemeModel) {
      return this;
    }
    return SharedPref.getTheme()??defaultTheme;
  }
}