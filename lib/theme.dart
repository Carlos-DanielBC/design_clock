import 'package:design_clock/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

// Light Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kBodyTextColorLight),
    primaryIconTheme: IconThemeData(color: kPrimaryIconLightColor),
    textTheme: AppTextTheme.light,
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryLightColor,
      scrim: kAccentLightColor,
    ),
    secondaryHeaderColor: Colors.white,
  );
}

// Dark Theme
ThemeData darkThemeData(BuildContext context) {
  return ThemeData(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Color(0xFF0D0C0E),
    canvasColor: Color(0xFF0D0C0E),
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kBodyTextColorDark),
    primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
    textTheme: AppTextTheme.dark,
    colorScheme: ColorScheme.dark(
      primary: kPrimaryColor,
      secondary: kSecondaryDarkColor,
      surface: kSurfaceDarkColor,
      scrim: kAccentDarkColor,
    ),
    secondaryHeaderColor: kBackgroundDarkColor,
  );
}

// AppBar Theme
AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent, elevation: 0);
