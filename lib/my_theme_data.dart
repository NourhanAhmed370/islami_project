import 'package:flutter/material.dart';

class MyTheme{
  static ThemeMode themeMode = ThemeMode.dark;
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color lightMainTextColor = Color(0xFF242424);
  static const Color darkMainTextColor = Color(0xFFF8F8F8);
  static const Color darkAccentColor = Color(0xFFFACC1D);

  static var lightTheme = ThemeData(
      progressIndicatorTheme:
      const ProgressIndicatorThemeData(color: lightPrimary),
      cardColor: Colors.white,
      primaryColor: lightPrimary,
      accentColor: lightPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(color: lightMainTextColor, fontSize: 30),
          iconTheme: IconThemeData(color: Colors.black)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
    textTheme: const TextTheme(
      headline3: TextStyle(
        fontSize: 32,
        color: lightMainTextColor,
      ),
      headline5: TextStyle(
        fontSize: 24,
        color: lightMainTextColor,
      ),
      bodyText1: TextStyle(
        fontSize: 24,
        color: lightMainTextColor,
      ),
      bodyText2: TextStyle(
        fontSize: 20,
        color: lightMainTextColor,
      ),
    )
  );
  static var darkTheme = ThemeData(
      progressIndicatorTheme:
      const ProgressIndicatorThemeData(color: darkAccentColor),
      cardColor: darkPrimary,
      primaryColor: darkPrimary,
      accentColor: darkAccentColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(color: darkMainTextColor, fontSize: 30),
          iconTheme: IconThemeData(color: Colors.white)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: darkAccentColor,
        unselectedItemColor: Colors.white,
      ),
      textTheme: const TextTheme(
        headline3: TextStyle(
          fontSize: 32,
          color: darkMainTextColor,
        ),
        headline5: TextStyle(
          fontSize: 24,
          color: darkMainTextColor,
        ),
        bodyText1: TextStyle(
          fontSize: 24,
          color: darkMainTextColor,
        ),
        bodyText2: TextStyle(
          fontSize: 20,
          color: darkAccentColor,
        ),
      )
  );
}