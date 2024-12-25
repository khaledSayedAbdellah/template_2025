import 'package:flutter/material.dart';
import 'theme_model.dart';
import '../../Utilities/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {

  ThemeModel _appTheme = ThemeModel.defaultTheme;
  ThemeModel get appTheme => _appTheme;

  void fetchTheme(){
    if (SharedPref.getTheme() == null){
      _appTheme = ThemeModel.defaultTheme;
    }
    else{
      _appTheme = SharedPref.getTheme()!;
    }
  }


  ThemeData? get appThemeMode =>  _appTheme.isDark? _darkMode:_lightMode;


  ThemeData get _darkMode => ThemeData.dark(useMaterial3: false).copyWith(
      extensions: <ThemeExtension<ThemeModel>>[
        _appTheme,
      ]
  );
  ThemeData get _lightMode => ThemeData.light(useMaterial3: false).copyWith(
    extensions: <ThemeExtension<ThemeModel>>[
      _appTheme,
    ]
  );


  Future changeTheme({required ThemeModel theme}) async {
    _appTheme = theme;
    await SharedPref.setTheme(theme: _appTheme);
    notifyListeners();
  }
}
