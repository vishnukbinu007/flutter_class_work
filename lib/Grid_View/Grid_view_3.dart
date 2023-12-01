import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview_3(),));
}
class Gridview_3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
        GridView.count(crossAxisCount: 4,mainAxisSpacing: 20,crossAxisSpacing: 30,
        children: List.generate(20, (index) =>Container(
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          child:
            Column(
              children: [
                Image.network("https://plus.unsplash.com/premium_photo-1699908236960-b6642e080ba5?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                Text("Nature",style: TextStyle(color: Colors.black),)
              ],
            )
        )),)
    );
  }
}
