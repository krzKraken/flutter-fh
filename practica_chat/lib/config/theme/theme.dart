import 'package:flutter/material.dart';

enum OptionTheme { light, dark }

class AppTheme {
  final OptionTheme optionTheme;

  AppTheme({required this.optionTheme})
      : assert(
            optionTheme != OptionTheme.light || optionTheme != OptionTheme.dark,
            'optionTheme must be light or dark');

  ThemeData theme() {
    switch (optionTheme) {
      case OptionTheme.light:
        return ThemeData(
          useMaterial3: true,
          brightness: Brightness.light,
        );
      case OptionTheme.dark:
        return ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
        );
    }
  }
}
