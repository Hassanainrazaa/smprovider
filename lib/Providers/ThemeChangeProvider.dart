import 'package:flutter/material.dart';

class ThemeChangeProvider extends ChangeNotifier {
  var _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void SetTheme(thememode) {
    _themeMode = thememode;
    notifyListeners();
  }
}
