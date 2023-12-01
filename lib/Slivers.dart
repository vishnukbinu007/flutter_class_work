import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Sliver_ex(),));
}
class Sliver_ex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: Text("Sliver"),
            bottom: AppBar(
              title: Container(width: double.infinity,
              height: 40,
                color: Colors.greenAccent,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "search",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.add),
                  ),

                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(List.generate(50,(index) =>
               ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/imageTiger.jpg"),
                 //Icon(Icons.person
               ),
              trailing: Icon(Icons.offline_pin_sharp),
              title: Text("index $index"),)
          )))
        ],
      ),
    );
  }
}
