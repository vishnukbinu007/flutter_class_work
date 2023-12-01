import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: ListView4(),));
}
class ListView4 extends StatelessWidget {
  const ListView4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView sepreated'),
      ),
      body: ListView.separated(
          itemBuilder: (context , index){
        return const ListTile(
          leading : Icon(Icons.person),
          title: Text("My Contact"),
        );
      },
          separatorBuilder: (context , index){
        if(index % 3 == 0) {
          return const Divider(thickness: 5,
          color: Colors.purple,);
        }
        else{
        return SizedBox();
        }
        },
          itemCount: 10)
    );
  }
}
