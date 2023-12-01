import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_class_work/Loginpage.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp (home:Spalsh2(),));
}
class  Spalsh2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Splash2state();


}

class _Splash2state extends State<Spalsh2>{
  @override
  void initState(){
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Lottie.asset("assets/animations/Animation - 1698822760241.json") ,
      ),
    );
  }
}