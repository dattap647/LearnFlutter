import 'package:flutter/material.dart';
import 'package:run/Pages_or_screen/homepage.dart';
import 'package:run/Pages_or_screen/login_page.dart';
import 'package:run/utils/routes.dart';
import 'package:run/widget/theme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:MyTheme.lighTheme(context),
            debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.homeroutes,
        routes: {
          "/":(context)=>LoginPage(),
          MyRoutes.loginroutes:(context)=>LoginPage(),
          MyRoutes.homeroutes:(context)=>HomePage(),
        },
    );
  }
}
