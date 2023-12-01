import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class_work/Grid_View/Grid_view_3.dart';
import 'package:flutter_class_work/Grid_View/Gridview_4.dart';
import 'package:flutter_class_work/list_view2.dart';
import 'package:flutter_class_work/list_view4.dart';
import 'package:flutter_class_work/listview3.dart';

void main(){
  runApp(MaterialApp(home: Convex_appBar(),));
}

class Convex_appBar extends StatefulWidget {


  @override
  State<Convex_appBar> createState() => _Convex_appBarState();
}

class _Convex_appBarState extends State<Convex_appBar> {
  int index=0;
  var screens=[ListView3(),Gridview_3(),Gridview_4()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Convex App Bar"),
      ),


      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.indigo,
        style:TabStyle.reactCircle,
        onTap: (tapindex){
          setState( ()  {
            index = tapindex;
          });
        },


        items:  [TabItem(
            icon: Icon(Icons.home)),
      TabItem(icon: Icon(Icons.person)),
        TabItem(icon: Icon(Icons.search)),
      ],

      ),
body: screens[index],
    );
  }
}
