import 'package:flutter/material.dart';

class AColors {
  AColors._();

  // App Basic Colors
  static const Color primary = Colors.blue;
  static const Color secondary = Colors.amber;
  static const Color accent = Colors.blueAccent;

  // Gradiant
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0, 0),
      end: Alignment(0.707, -0.707),
      colors: [
        Colors.purple,
        Color.fromARGB(255, 164, 81, 179),
        Color.fromARGB(255, 164, 115, 173),
      ]);

  // Text Colors
  static const Color textPrimary = Colors.black54;
  static const Color textSecondary = Colors.grey;
  static const Color textAccent = Colors.white;

  // Background colors
  static const Color light = Colors.white;
  static const Color dark = Colors.black;
  static const Color primaryBackground = Colors.white;

  // background container color
  static const Color lightContainer = Colors.white;
  static Color darkContainer = Colors.white.withOpacity(0.1);

  // button color
  static const Color buttonPrimary = Colors.blue;
  static const Color buttonSecondary = Colors.black12;
  static const Color buttonDisabled = Colors.grey;

  // Border color
  static const Color borderPrimary = Colors.white;
  static const Color borderSecondary = Colors.white;

  // Error and Validation color
  static const Color error = Colors.red;
  static const Color success = Colors.green;
  static const Color warning = Colors.orange;
  static const Color info = Colors.blue;

  // Neutral shade color
  static const Color black = Colors.black;
  static const Color darkerGrey = Color.fromARGB(255, 65, 65, 65);
  static const Color darkGrey = Color.fromARGB(255, 95, 95, 95);
  static const Color softGrey = Color.fromARGB(255, 184, 184, 184);
  static const Color grey = Colors.grey;
  static const Color lightGrey = Color.fromARGB(255, 223, 223, 223);
  static const Color white = Colors.white;
}
