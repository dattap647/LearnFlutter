import 'package:flutter/material.dart';
import 'package:run/widget/drawer.dart';

class HomePage extends StatelessWidget {
  
 int day = 30;
  String name = "Datta";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: Center(
          child: Container(
            child: Text("  Learnng flutter for  $day design better UI by $name " )
          ),
        ),
        drawer: MyDrawer(),
        
      );
      
    
  }
}
