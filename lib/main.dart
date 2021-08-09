import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run/Pages_or_screen/homepage.dart';
import 'package:run/Pages_or_screen/login_page.dart';
import 'package:run/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(
          brightness: Brightness.light
        ),
        routes: {
          "/":(context)=>LoginPage(),
          MyRoutes.loginroutes:(context)=>LoginPage(),
          MyRoutes.homeroutes:(context)=>HomePage(),
        },
    );
  }
}
