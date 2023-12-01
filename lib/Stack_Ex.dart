import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: StackEx(),));
}

class StackEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Stack(
        children: [
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(50),
              image:DecorationImage( image:
              AssetImage(
                  "assets/image/imageTiger.jpg"),fit: BoxFit.fill),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.redAccent,
          ),
          Positioned(
            left: 100,
            top: 100,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
