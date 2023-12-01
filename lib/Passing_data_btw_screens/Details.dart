import 'package:flutter/material.dart';
import 'package:flutter_class_work/Passing_data_btw_screens/Dummmy_data.dart';

class Details extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final id= ModalRoute.of(context)?.settings.arguments;
    final product= Products.firstWhere((e) => e["id"]==id);
    return Scaffold(
      appBar: AppBar(
        title: const Text("A Class"),
      ),
      body: Column(
        children: [
          Image.asset(product["image"]),
          Text(product["name"],style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
          Text(product["description"],style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
          Text("${product["price"]}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
        ],
      ),
    );
  }
}
