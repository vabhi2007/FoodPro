// lib/core/utils/app_theme.dart

import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primarySwatch: Colors.orange,
    primaryColor: Colors.orange,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.orange,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.black, // Customize the color
      ),
      titleLarge: TextStyle(fontFamily: 'Comfortaa', fontSize: 22),
      bodyMedium: TextStyle(fontFamily: 'Poppins', fontSize: 12),
    ),
  );

  static final darkTheme = ThemeData(
    primarySwatch: Colors.orange,
    primaryColor: Colors.orange,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(color: Colors.orangeAccent),
    ),
    // Add more theme customizations as needed
  );
}
