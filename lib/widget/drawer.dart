import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageurl = "https://images.unsplash.com/photo-1606787620819-8bdf0c44c293?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.yellow[800],

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountEmail: Text("dattap@gmail.com"),
                accountName: Text("Dattatray Patil"),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageurl)),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
              color: Colors.white,
               ),
               title: Text("Home",
               textScaleFactor: 1.2,
               style: TextStyle(
                 color: Colors.white,
               ),
               ),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
              color: Colors.white,
               ),
               title: Text("Home",
               textScaleFactor: 1.2,
               style: TextStyle(
                 color: Colors.white,
               ),
               ),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
              color: Colors.white,
               ),
               title: Text("Home",
               textScaleFactor: 1.2,
               style: TextStyle(
                 color: Colors.white,
               ),
               ),

            )
          ],
        ),
      ),
    );
  }
}
