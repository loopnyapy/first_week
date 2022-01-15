import 'package:flutter/material.dart';

class CustomThemeData {
  static const primaryColorHEX = 0xFF30A4F7;
  static const customMaterialColors = {
    50: Color.fromRGBO(48, 164, 247, .1),
    100: Color.fromRGBO(48, 164, 247, .2),
    200: Color.fromRGBO(48, 164, 247, .3),
    300: Color.fromRGBO(48, 164, 247, .4),
    400: Color.fromRGBO(48, 164, 247, .5),
    500: Color.fromRGBO(48, 164, 247, .6),
    600: Color.fromRGBO(48, 164, 247, .7),
    700: Color.fromRGBO(48, 164, 247, .8),
    800: Color.fromRGBO(48, 164, 247, .9),
    900: Color.fromRGBO(48, 164, 247, 1),
  };

  static get themeData => ThemeData(
        primarySwatch: const MaterialColor(
          primaryColorHEX,
          customMaterialColors,
        ),
        fontFamily: 'SFCompactDisplay',
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            letterSpacing: -0.5,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
        ),
      );
}
