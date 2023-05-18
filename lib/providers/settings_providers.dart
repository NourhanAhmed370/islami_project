import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = 'en';
  //SharedPreferences preferences = await SharedPreferences.getInstance();
  // shared preferences
  // key -> value

  SettingsProvider() {
    // load settings configurations from
    //shared preferences if exist
    //swaptheme();
  }

  void changeLanguage(String newLangCode) {
    languageCode = newLangCode;
    // save lang -> newLangCode
    notifyListeners();
  }

  void enableDarkMode() {
    themeMode = ThemeMode.dark;
    //save theme -> 'dark'
    notifyListeners();
  }

  void enableLightMode() {
    themeMode = ThemeMode.light;
    // save theme -> 'light'
    notifyListeners();
  }

  bool isDarkEnabled() {
    return themeMode == ThemeMode.dark;
  }

  String getBackgroundImage() {
    return themeMode == ThemeMode.light
        ? 'assets/images/main_background.png'
        : 'assets/images/darkPg.png';
  }
  Future<void> swaptheme() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if(themeMode==ThemeMode.dark){
      themeMode = ThemeMode.light;
      preferences.setBool("isDark",false);
    }
    else{
      themeMode=ThemeMode.dark;
      preferences.setBool("isDark", true);
    }
    notifyListeners();
  }

  ThemeMode get getTheme => themeMode;

}