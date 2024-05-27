import 'package:flutter/material.dart';
import 'package:oppointments_sysytem/core/theming/Themes/text_styles.dart'
    as my_text_style;

import '../colors/colors.dart';

class LightTheme {
  static LightTheme? _lightTheme;

  LightTheme._internal();

  final my_text_style.TextStyles textStyles = my_text_style.TextStyles();
  factory LightTheme() {
    return _lightTheme ?? LightTheme._internal();
  }

  ThemeData get lightTheme {
    return ThemeData.light().copyWith(
        primaryColor: ColorPalette.primary100,
        scaffoldBackgroundColor: ColorPalette.white,
        textTheme: TextTheme(
            headlineLarge: textStyles.headLineLarge,
            displayLarge: textStyles.headerMediumBlack,
            displayMedium: textStyles.headerMediumPrimary,
            displaySmall: textStyles.displaySmall,
            bodySmall: textStyles.bodySmall,
            labelMedium: textStyles.buttonTextMedium));
  }
}
