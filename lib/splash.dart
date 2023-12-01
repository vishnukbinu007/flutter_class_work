

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Splash(),));
}
class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   // backgroundColor: Colors.blue,
   body: Container(
     decoration: const BoxDecoration(
     // image: DecorationImage(
     // fit: BoxFit.cover,
     //   image: NetworkImage("https://plus.unsplash.com/premium_photo-1671297707553-14091918813e?auto=format&fit=crop&q=80&w=1932&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
     gradient: LinearGradient(
     begin: Alignment.topLeft,
     end: Alignment.bottomCenter,
     colors: [
     Colors.blue,
     Colors.yellow,
       Colors.redAccent,
       Colors.blue,
     ])
        ),
     ///to set background gradient for body


     child: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           FaIcon(FontAwesomeIcons.instagram),
            //Image(image: NetworkImage("data:image/jpeg;base64,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"),height: 50,width: 100,),
           Text("Instagram",
               // style:TextStyle(fontSize:30,color:Colors.black)),
           style:GoogleFonts.greatVibes(
             fontSize: 30,
             color: Colors.white,
             fontWeight:FontWeight.bold
           ),
           ),
         ],
       ),
     ),
   ),
 );
  }

}