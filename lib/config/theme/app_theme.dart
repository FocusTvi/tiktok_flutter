import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.black38,
      textTheme: TextTheme(titleLarge: TextStyle(color: Colors.white)));
}
