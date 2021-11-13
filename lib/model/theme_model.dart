import 'package:culibrary/color_themes.dart';
import 'package:flutter/material.dart';

class MyThemes {
  static final darkMode = ThemeData(
    scaffoldBackgroundColor: darkColor,
    colorScheme: const ColorScheme.dark(),
    appBarTheme: AppBarTheme(
      backgroundColor: darkColor,
      foregroundColor: lightColor,
    )
  );

  static final lightMode = ThemeData(
    scaffoldBackgroundColor: lightColor,
    colorScheme: const ColorScheme.light(),
    appBarTheme: AppBarTheme(
      backgroundColor: lightColor,
      foregroundColor: darkColor
    )
  );
}
