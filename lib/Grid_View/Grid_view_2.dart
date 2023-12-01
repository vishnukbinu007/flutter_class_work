import 'package:flutter/material.dart';
import 'package:flutter_class_work/Grid_View/My_widget.dart';
void main() {
  runApp(MaterialApp(home: Gridview_2(),));
}
class Gridview_2 extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Grid view"),
    //   ),
    //       body: GridView.builder(
    //         itemCount: 20,
    //     gridDelegate:
    //     SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,crossAxisSpacing: 10,mainAxisSpacing: 10),
    // itemBuilder: (context,index)=>
    // Container(
    // color: Colors.purpleAccent,
    // child: Center(child: Text('user$index')),
    // )
    // ),

      appBar: AppBar(
        title: Text("Grid view"),
      ),
      body: GridView.builder(
        itemCount: 10,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 120,mainAxisSpacing: 10,crossAxisSpacing: 10),
          itemBuilder: (context,index) =>
    Container(
      // child: Mywidget(label: , onpressed: (){
      //
      // }, bgcolor: Colors.red),
      color: Colors.greenAccent,
      child: Center(child: Text('user$index')),
    )
    ),
    );
  }
}
