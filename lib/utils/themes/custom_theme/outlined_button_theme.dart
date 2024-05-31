import 'package:flutter/material.dart';

class AOutlineButtonTheme {
  AOutlineButtonTheme._();

  //light theme
  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.black,
    side: const BorderSide(color: Color.fromARGB(255, 11, 194, 255)),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    textStyle: const TextStyle(
        fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
  ));

  //dark theme
  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    side: const BorderSide(color: Color.fromARGB(255, 68, 205, 255)),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    textStyle: const TextStyle(
        fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
  ));
}
