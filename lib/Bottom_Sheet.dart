import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Bottomsheet() ,));
}
class Bottomsheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: GestureDetector(
          onDoubleTap: (){
            showsheet(context);
          },
            child: Image.asset("assets/image/sunflower.jpg")),
      ),
    );
  }

  void showsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context){
      return const Column(mainAxisSize: MainAxisSize.min,
        children: [
          // Row(children: [Icon(Icons.copy),Text("copy")]),
          // Row(children: [Icon(Icons.share), Text("share")]),
          ListTile(
            leading: Icon(Icons.share),
            trailing: Text("Share"),
          ),
            ListTile(
              leading: Icon(Icons.copy),
              trailing: Text("Copy"),

            )
        ],
      );
    });
  }
}
