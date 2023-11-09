import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        // primaryTextTheme: TextTheme(),

        primarySwatch: Colors.deepPurple,

        cardColor: Colors.white,
        colorScheme: ColorScheme.light(
          secondary: darkBluishColor,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: darkBluishColor,
        ),
        canvasColor: lightCreamColor,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: darkBluishColor,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          secondary: Colors.white,
          background: lightBluishColor,
        ),
        primarySwatch: Colors.deepPurple,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
      );
  static Color lightCreamColor = const Color(0xfff5f5f5);
  static Color darkBluishColor = const Color(0xff403b58);
  static Color darkCreamColor = Vx.gray900;
  static Color lightBluishColor = Vx.indigo400;
}
