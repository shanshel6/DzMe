import 'package:flutter/material.dart';
import 'package:prokit_flutter/integrations/utils/styles.dart';
import 'package:prokit_flutter/integrations/utils/styles.dart';

class AppState with ChangeNotifier {
  var selectedLanguageCode = 'en';
  Locale locale = Locale('en');
  Color color;

  ThemeData _themeData = getLightTheme();

  getTheme() => _themeData;

  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }

  AppState(lang, Color aColor) {
    selectedLanguageCode = lang;
    color = aColor;
  }

  Locale get getLocale => locale;

  get getSelectedLanguageCode => selectedLanguageCode;

  setLocale(locale) => this.locale = locale;

  setSelectedLanguageCode(code) => this.selectedLanguageCode = code;

  changeLocale(Locale l) {
    locale = l;
    notifyListeners();
  }

  changeLanguageCode(code) {
    selectedLanguageCode = code;
    locale = Locale(code);
    notifyListeners();
  }
}
