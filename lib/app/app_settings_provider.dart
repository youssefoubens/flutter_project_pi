import 'package:flutter/material.dart';

class AppSettingsProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  Locale _locale = const Locale('fr');
  
  ThemeMode get themeMode => _themeMode;
  Locale get locale => _locale;
  
  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }
  
  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
  
  void setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }
}