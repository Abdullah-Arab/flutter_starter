import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const MaterialColor primaryColor =
    MaterialColor(_primaryColorPrimaryValue, <int, Color>{
  50: Color(0xFFE6F6FF),
  100: Color(0xFFC1EAFF),
  200: Color(0xFF97DCFF),
  300: Color(0xFF6DCDFF),
  400: Color(0xFF4EC3FF),
  500: Color(_primaryColorPrimaryValue),
  600: Color(0xFF2AB1FF),
  700: Color(0xFF23A8FF),
  800: Color(0xFF1DA0FF),
  900: Color(0xFF1291FF),
});
const int _primaryColorPrimaryValue = 0xFF2FB8FF;

const MaterialColor mcgpalette0Accent =
    MaterialColor(_primaryColorAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryColorAccentValue),
  400: Color(0xFFC6E3FF),
  700: Color(0xFFADD6FF),
});
const int _primaryColorAccentValue = 0xFFF9FCFF;

ThemeData primaryTheme = ThemeData(
  //useMaterial3: true,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: primaryColor),
  fontFamily: 'Almarai',
  listTileTheme: const ListTileThemeData(
    subtitleTextStyle: TextStyle(
      fontFamily: 'Almarai',
      color: Color(0xFF4C4C4C),
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    titleTextStyle: TextStyle(
      fontFamily: 'Almarai',
      color: Color(0xFFCBCBCB),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.5,
    ),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Color(0xFFffffff),
    ),
    headlineSmall: TextStyle(
      color: Color(0xFFffffff),
    ),
    bodySmall: TextStyle(
      color: Color.fromARGB(255, 200, 200, 200),
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      foregroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(Color(0xFFA3A3A3)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  ),

  // iconButtonTheme: IconButtonThemeData(
  //   style: ButtonStyle(
  //     backgroundColor: MaterialStateProperty.all(primaryColor),
  //     foregroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
  //     iconColor: MaterialStateColor.resolveWith((states) => Colors.white),
  //   ),
  // ),
);

const RadialGradient primaryGradient = RadialGradient(
  center: Alignment(-1.0, -1.0),
  radius: 2.5,
  colors: <Color>[
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 65, 65, 65),
  ],
  stops: <double>[0.0, 1.0],
);

const roundedRectangleFromTop = ShapeDecoration(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(32),
      topRight: Radius.circular(32),
    ),
  ),
);

var defaultInputBorder = OutlineInputBorder(
  borderSide: const BorderSide(
    color: Colors.grey,
  ),
  borderRadius: BorderRadius.circular(12),
);

const defaultShadow = BoxShadow(
  color: Color.fromARGB(17, 0, 0, 0),
  blurRadius: 8,
  offset: Offset(4, 4),
  spreadRadius: 0,
);

const defaultRadius = 12.0;
