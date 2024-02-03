import 'package:flutter/material.dart';

const Color _customColor = Color( 0xFF5C11D4 );

const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class PrincipalTheme {

  final int selectedColor;
  final bool isDark;

  PrincipalTheme({
    this.selectedColor = 0,
    this.isDark = false
  }): assert( selectedColor < _colorTheme.length && selectedColor >= 0, 'Colors must be between 0 and ${_colorTheme.length}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorTheme[selectedColor],
      brightness: isDark ? Brightness.dark : Brightness.light
    );
  }
}