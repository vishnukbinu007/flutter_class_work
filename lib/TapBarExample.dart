import 'package:flutter/material.dart';
import 'package:flutter_class_work/Grid_View/Grid_view_2.dart';
void main(){
runApp(MaterialApp(home: TabbarEx(),));
}
class TabbarEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text("Tabbar"),
          bottom: const TabBar
            (tabs: [Text("Chat"),
            Text("call"),
            Text("Status")
          ]),
        ),
        body: TabBarView(children: [
          Gridview_2(),

          // Center(child: Text("Call")),
          // Icon(Icons.person),
        ]),
      ),
    );
  }
}
