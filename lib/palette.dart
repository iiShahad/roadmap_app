import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Palette {
  static const primaryColor = Color(0xFF00BBF9);
  static const primaryLightColor = Color(0xFF5472D3);
  static const primaryDarkColor = Color(0xFF002171);
  static const secondaryColor = Color(0xFF00BFA5);
  static const secondaryLightColor = Color(0xFF5DF2D6);
  static const secondaryDarkColor = Color(0xFF008E76);
  static const backgroundColor = Color(0xFF1A1B1E);
  static const surfaceColor = Color(0xFF2A2C31);
  static const navbarColor = Color(0xFF101112);
  static const errorColor = Color(0xFFC82A47);
  static const onPrimaryColor = Color(0xFFFFFFFF);
  static const onSecondaryColor = Color(0xFF000000);
  static const onBackgroundColor = Color(0xFF000000);
  static const onSurfaceColor = Color(0xFF202020);
  static const onErrorColor = Color(0xFFFFFFFF);
  static const primaryTextColor = Color(0xFF000000);
  static const secondaryTextColor = Color(0xFF000000);
  static const dividerColor = Color(0xFF000000);
  static const shadowColor = Color(0xFF000000);
  static const transparent = Color(0x00000000);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const grey = Color(0xFFB9B9B9);
  static const lightGrey = Color(0xFFE0E0E0);
  static const darkGrey = Color(0xFF616161);
  static const red = Color.fromARGB(255, 233, 75, 75);
  static const green = Color(0xFF388E3C);
  static const blue = Color(0xFF1976D2);
  static const yellow = Color(0xFFFFA000);
  static const orange = Color(0xFFFF6D00);
  static const purple = Color(0xFF7B1FA2);
  static const pink = Color(0xFFC2185B);
  static const teal = Color(0xFF00897B);
  static const cyan = Color(0xFF00ACC1);
  static const amber = Color(0xFFFFC107);
  static const lime = Color(0xFFAFB42B);
  static const lightGreen = Color(0xFF689F38);

  static ThemeData get theme => ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
        primaryColor: primaryColor,
        scaffoldBackgroundColor: backgroundColor,
        inputDecorationTheme: const InputDecorationTheme(
          errorStyle: TextStyle(color: errorColor, fontSize: 13),
          fillColor: Palette.surfaceColor,
          filled: true,
          hintStyle: TextStyle(color: Palette.darkGrey),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            backgroundColor: Palette.primaryColor,
            foregroundColor: Palette.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: backgroundColor,
          elevation: 0,
          foregroundColor: white,
        ),
      );

  static TextStyle get titleB => const TextStyle(
        color: white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get title2 => const TextStyle(
        color: white,
        fontSize: 18,
      );

  static TextStyle get subtitle => const TextStyle(
        color: darkGrey,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get subtitle2 => const TextStyle(
        color: grey,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );

  static List<BoxShadow> get shadow => [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 10,
          offset: const Offset(0, 5),
        )
      ];
}
