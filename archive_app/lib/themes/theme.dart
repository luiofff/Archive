import 'package:flutter/material.dart';

final theme = ThemeData(
    fontFamily: 'Helvetica',
    scaffoldBackgroundColor: const Color.fromARGB(253, 255, 255, 255),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF0075FF),
        titleTextStyle: TextStyle(fontFamily: 'Helvetica', fontSize: 32)
        ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF0075FF),
      iconSize: 32,
    ));
