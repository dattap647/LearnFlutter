
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lighTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          textTheme: Theme.of(context).textTheme,
          elevation:0.0,
        ),
        

        );
    
    static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark
        
        
        );
}