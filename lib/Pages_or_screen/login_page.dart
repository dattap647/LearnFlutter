import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:run/Pages_or_screen/homepage.dart';
import 'package:run/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroutes);
      setState(() {
        changeButton = false;
      });
    } else
      return print("hello");
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                       validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username cannot be Empty";
                        } 
                        
                          return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Username ",
                        labelText: "Enter Username",
                      ),
                       onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                     
                      
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password cannot be Empty";
                        }
                        // else if (value.length < 6) {
                        //   return "Password Cannot be less that 6 digit";
                        // }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Enter Password",
                      ),
                      
                    ),
                    SizedBox(height: 29.0),
                    Material(
                      color: Colors.yellow[800],
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                        ),
                      ),
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
      ),
    );
  }
}
