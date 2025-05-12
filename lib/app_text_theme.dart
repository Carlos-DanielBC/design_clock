import 'package:design_clock/constants.dart';
import 'package:flutter/material.dart';

/// Tema de los textos de la aplicación.
class AppTextTheme {
  /// {@macro private_constructor}
  AppTextTheme._();

  /// Texto de la aplicación en tema claro.
  static const TextTheme light = TextTheme(
    titleLarge: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 12,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 12,
      color: Color(0xFFA1B0CA),
      fontWeight: FontWeight.normal,
    ),
    displayLarge: TextStyle(
      fontSize: 80,
      fontWeight: FontWeight.w300,
      color: Color(0xFF101112),
    ),
    headlineMedium: TextStyle(fontSize: 32, color: kTitleTextLightColor),
  );

  /// Texto de la aplicación en tema oscuro.

  static const TextTheme dark = TextTheme(
    titleLarge: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 12,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 12,
      color: Color(0xFFA1B0CA),
      fontWeight: FontWeight.normal,
    ),
    displayLarge: TextStyle(
      fontSize: 80,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(fontSize: 32, color: kTitleTextDarkColor),
  );
}
