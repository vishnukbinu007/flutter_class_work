
import 'package:flutter/material.dart';
import 'package:flutter_class_work/Loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black,),
        elevation: 0,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sign up', style: GoogleFonts.satisfy(fontSize: 30),),
              Text('Create an Account,its free',),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "email",
                      labelText: 'enter your email',
                      border: OutlineInputBorder()

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "password",
                      labelText: 'enter your password',
                      border: OutlineInputBorder()

                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "confirm password",
                      labelText: 'confirm your password',
                      border: OutlineInputBorder()

                  ),
                ),
              ),
              MaterialButton(onPressed: () {},
                color: Colors.red,
                shape: StadiumBorder(
                ),
                child: Text("Sign up"),

              ),
              TextButton(onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (Signup) => LoginPage()));
              }, child: RichText(text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black),
                children: [
                  TextSpan(text: "Alredy have an account?"),
                  TextSpan(text: "Login",
                      style: TextStyle(color: Colors.black, fontSize: 20))
                ],
              )
              )
              )
            ],
          )),
    );
  }}

