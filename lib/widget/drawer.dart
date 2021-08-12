import 'package:flutter/material.dart';
 
 class MyDrawer extends StatelessWidget {
 
   @override
   Widget build(BuildContext context) {
     return Drawer(
       
       child: ListView(
         children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            
            child:  UserAccountsDrawerHeader(
            accountEmail: Text("dattap@gmail.com"),
            accountName: Text("Dattatray Patil"),
            currentAccountPicture: Image.asset("assets/images/profile.jpg",
            
            ) ,
            
          ),
          )
         ],
       ),
     );
   }
 }