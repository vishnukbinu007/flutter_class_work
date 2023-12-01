import 'package:flutter/material.dart';
import 'package:flutter_class_work/list_view2.dart';
import 'package:flutter_class_work/list_view4.dart';
import 'package:flutter_class_work/listview3.dart';

void main(){
  runApp(MaterialApp(home: BottomNav(),));
}

class BottomNav extends StatefulWidget {

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index=0;
  var screens= [ListView4(),ListView2(),ListView3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Bottom navigation bar"),
      ),

      bottomNavigationBar:BottomNavigationBar(
        onTap: (tapindex){
          setState( ()  {
            index = tapindex;
          });
        },
      currentIndex: index,
    backgroundColor:Colors.red,
    items :const [

      BottomNavigationBarItem(
        icon: Icon(
            Icons.add),label: "add",
        backgroundColor: Colors.cyan,),

        BottomNavigationBarItem(
          icon: Icon(Icons.access_alarms_outlined),label: "alaram",
          backgroundColor: Colors.cyan,),

        BottomNavigationBarItem(
          icon: Icon(Icons.home),label: "home",
          backgroundColor: Colors.cyan,),

      ]),
      body: screens[index],
    );
  }
}
