import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview_4(),));
}
class Gridview_4 extends StatelessWidget {
  
var icons=[Icons.ice_skating,
  Icons.access_alarm,
  Icons.account_box,
  Icons.ice_skating,
  Icons.ice_skating,
  Icons.ice_skating,
  Icons.ice_skating,
  Icons.ice_skating,
  Icons.ice_skating,
  Icons.ice_skating,
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body:
      GridView.extent(maxCrossAxisExtent: 120,
      children: List.generate(10, (index) => Column(
        children: [
          Expanded(child: Image.network("https://plus.unsplash.com/premium_photo-1699292639215-6f34ff51daec?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
        Expanded(child: Text("BEAUTY",style: TextStyle(color: Colors.blueGrey),)),
        Expanded(child: Icon(icons[index]))
        ],
      ),
      ),
      ),
    );
  }
}
