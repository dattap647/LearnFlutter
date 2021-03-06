import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white,
      child:Column(
        children: [
          Image.asset("assets/images/login_page.png",fit: BoxFit.cover,),
          Text("Welcome",
          style: 
          TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(
            height: 29.0
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    labelText: "Enter Username",
                    
                  ),
                ),
                TextFormField(
                   obscureText:true,
                  decoration: InputDecoration(
                   
                    hintText: "Password",
                    labelText: "Enter Password",
                  ),
                ),
                SizedBox(
                height: 29.0
                ),
                ElevatedButton( 
                  child: Text("Login"),
                  style: TextButton.styleFrom() ,
                   
                  onPressed: (){},
                  
                  
                  ),
              ],
            ),
          ),


        ],
      ),


    );
  }
}