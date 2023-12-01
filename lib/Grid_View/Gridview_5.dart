import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview_5(),));
}
class Gridview_5 extends StatelessWidget {

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
        title: Text("NOTHING"),
      ),
      body:

      GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,),
          childrenDelegate: SliverChildBuilderDelegate((context, index ) =>
    Container(
    child: Image.network("https://plus.unsplash.com/premium_photo-1676642613556-e3a217b2751e?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      )),
    )
      )
    );

  }
}
