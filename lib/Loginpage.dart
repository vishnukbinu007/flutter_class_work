import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class_work/home.dart';
import 'package:flutter_class_work/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  String username ='admin';
  String password ='123we';

  final user_controller = TextEditingController();
  final pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
          elevation: 0,

        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'LOGIN',
                    style: GoogleFonts.satisfy(
                        fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Welcome Back! Login with your Credentials!!',
                  ),

                  Padding(
                      padding:EdgeInsets.only(bottom: 15.0,left: 15, right: 15,top: 15.0),
                      child: TextField(
                        controller: user_controller,
                        decoration: InputDecoration(
                            labelText: "Username",
                            prefixIcon: Icon(Icons.person),
                            hintText: "Username",
                            border: OutlineInputBorder(
                                borderRadius:BorderRadius.circular(20)
                            )

                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0,left: 20,right: 20,top:20),
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      controller: pass_controller,
                      decoration: InputDecoration(
                          labelText: "password",
                          prefixIcon: Icon(Icons.password),
                          hintText: "password",
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 170,
                    onPressed: () {
                      if(username == user_controller.text && password == pass_controller.text);
                      Navigator.push(context, MaterialPageRoute(builder: (LoginPage)=>Home()));
                    },
                    color: Colors.green,
                    shape: const StadiumBorder(),
                    child: const Text('Login'),

                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()));
                      },
                      child: RichText(
                          text: const TextSpan(
                              style: TextStyle(color: Colors.blue, fontSize: 20),
                              children: [
                                TextSpan(text: "Don't have an Account?"),
                                TextSpan(text: 'Sign up!!',
                                ),
                              ]
                          )
                      )
                  )

                ],
              )
          ),
        )
    );


  }

}