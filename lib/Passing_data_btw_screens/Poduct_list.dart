import 'dart:js';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class_work/Passing_data_btw_screens/Details.dart';
import 'package:flutter_class_work/Passing_data_btw_screens/Dummmy_data.dart';

void main(){
  runApp(MaterialApp(home: ProductList(),
  debugShowCheckedModeBanner: false,
  routes: {
    "details":(context)=>Details(),

  },
  ));
}
class ProductList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("product list") ,
      ),
      body: ListView(
        children: Products.map((e) => ListTile(leading: Text(e['name']),trailing: CircleAvatar(backgroundImage: AssetImage(e["image"]),
        ),
    onTap: ()=>gotodetails(context,e["id"]),)).toList()
    ),
    );
  }

  void gotodetails(BuildContext context,id){
    Navigator.pushNamed(context, "details",arguments: id);
}
}
