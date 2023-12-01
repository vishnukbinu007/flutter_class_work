import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview_1(),));
}
class Gridview_1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

     //  body:
     //  GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
     // children:
     //   List.generate(20, (index) => Card(
     //  child: Image.network('https://images.unsplash.com/photo-1535127022272-dbe7ee35cf33?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    //


      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,mainAxisSpacing:20,crossAxisSpacing: 20),

    children: List.generate(20, (index) =>
    Container(
    decoration: BoxDecoration(color: Colors.black),
    child: Image.network("https://images.unsplash.com/photo-1672344056297-a7ab5684969a?q=80&w=1032&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    )
    ),
      ),
    );
  }
}