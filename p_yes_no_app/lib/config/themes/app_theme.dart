import 'package:flutter/material.dart';

enum ColorTheme { light, dark }

const Color _customColor = Color.fromARGB(255, 255, 255, 255);

List<Color> _colorTheme = [
  _customColor,
  Colors.black,
  Colors.pink,
  Colors.purple,
  Colors.green,
  Colors.red,
  Colors.brown,
];

class AppTheme {
  //?Metodo que devuelve un ThemeData para poder ser invocado si algun cambio ocurre en tiempo de ejecucion

  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorTheme.length,
            'The selectedColor must be between 0 and ${_colorTheme.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorSchemeSeed: _colorTheme[selectedColor],
    );
  }
}
