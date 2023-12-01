import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main(){
  runApp(MaterialApp(home: Clipper_Ex(),));
}

class Clipper_Ex extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clipper1"),
        
      ),
      body: 
      ListView(
        children: [
          ClipRect(
            child: Align(child: Image.network("https://images.unsplash.com/photo-1682686580024-580519d4b2d2?q=80&w=1886&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            widthFactor: 0.5,
              heightFactor: 0.5,),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network("https://images.unsplash.com/photo-1700165723092-c4e4af768cce?q=80&w=1885&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          ),
          ClipOval(
            child: Image.network("https://images.unsplash.com/photo-1700164805522-c3f2f8885144?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          ),

          ClipPath(
            clipper: TriangleClipper(),
            child: Image.network("https://images.unsplash.com/photo-1700164805522-c3f2f8885144?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          ),

          ClipPath(
            clipper: SideCutClipper(),
            child: Image.network("https://images.unsplash.com/photo-1700164805522-c3f2f8885144?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          ),
    ClipPath(
    clipper: StarClipper(5),
    child: Image.asset("assets/image/imageTiger.jpg"),
      ),
    ],
      ));
  }
}
