import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  hintColor: Colors.cyan[600],
  scaffoldBackgroundColor: Colors.white,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    disabledColor: Colors.grey[400],
  ),
  textTheme: const TextTheme(),
  iconTheme: const IconThemeData(
    color: Colors.blue,
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.blue,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.blue,
  ),
  colorScheme: const ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.cyan,
    error: Colors.red,
  ),
);
