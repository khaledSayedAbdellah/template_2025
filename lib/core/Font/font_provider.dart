import 'package:flutter/material.dart';
import '../../Utilities/shared_preferences.dart';

enum FontFamilyTypes {alexandria,cairo}

class FontProvider extends ChangeNotifier {

  static const _maxScaleSize = 3;
  static const _minScaleSize = 0.3;
  static const double _defaultFontScaleSize = 1;
  static const FontFamilyTypes _defaultFontFamily = FontFamilyTypes.alexandria;

  double _fontSizeScale = 1;
  double get fontSizeScale => _fontSizeScale;

  FontFamilyTypes _fontFamily = _defaultFontFamily;
  FontFamilyTypes get fontFamily => _fontFamily;


  void fetchFontSettings() {
    _fontSizeScale = SharedPref.getFontSizeScale()??_defaultFontScaleSize;
    _fontFamily = SharedPref.getFontFamily()??_defaultFontFamily;
  }


  Future changeFontFamily({required FontFamilyTypes fontFamily}) async {
    if(_fontFamily == fontFamily) return;
    _fontFamily = fontFamily;
    await SharedPref.setFontFamily(fontFamily: fontFamily);
    notifyListeners();
  }

  Future changeFontSizeScale({required double fontSizeScale}) async {
    if(_fontSizeScale == fontSizeScale) return;
    if(fontSizeScale >= _maxScaleSize || fontSizeScale<=_minScaleSize) return;
    _fontSizeScale = fontSizeScale;
    await SharedPref.setFontSizeScale(fontSizeScale: fontSizeScale);
    notifyListeners();
  }
}
