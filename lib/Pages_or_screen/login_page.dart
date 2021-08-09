import 'package:flutter/material.dart';
import 'package:run/Pages_or_screen/homepage.dart';
import 'package:run/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_page.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 29.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      labelText: "Enter Username",
                    ),
                    onChanged: (value) {
                      name:value;
                      setState(() {
                        
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Enter Password",
                    ),
                  ),
                  SizedBox(height: 29.0),
                  Container(
                    child: Text("Login",style: TextStyle(fontSize: 20 ,
                    fontWeight: FontWeight.bold),),
                    color: Colors.yellow,
                  
                    width:70,
                    height: 30,

                  ),
                  // ElevatedButton(
                  //   child: Text("Login "),
                  //   style: TextButton.styleFrom(minimumSize: Size(150, 30)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeroutes);
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
