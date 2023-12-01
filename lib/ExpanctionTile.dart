import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Expanction_Type(),));
}

class Expanction_Type extends StatelessWidget {
var noty =['add','poth','maadu'];
var noty2 = ['great', 'small','lower'];
var noty3 = ['lower','greater','higher'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanction Tyle"),
      ),
      body: ListView(
        children: [
          ExpansionTile(
      title: Text("Notification1"),
          children: List.generate(3, (index) =>
             ListTile(
               title: Text(noty[index]),
                 leading: CircleAvatar(
                   backgroundColor: Colors.greenAccent,)

              ),
          ),

      ),

          ExpansionTile(
            title: Text("Notification2"),
            children: List.generate(3, (index) =>
                ListTile(
                    title: Text(noty3[index]),
                    leading: CircleAvatar(backgroundColor: Colors.redAccent,)

                ),
            ),

          ),
          ExpansionTile(
            title: Text("Notification3"),
            children: List.generate(3, (index) =>
                ListTile(

                    title: Text(noty2[index]),
                    leading: CircleAvatar(backgroundColor: Colors.blueAccent,
                )

                ),
            ),

          ),
    ]
    )
    );
  }
}
