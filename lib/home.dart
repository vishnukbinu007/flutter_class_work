import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main (){
  runApp(MaterialApp(home: Home(),));
}
class Home extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text("My Contacts"),
    ),
    body: ListView(
    children: const [
      Card(
     child: ListTile(
        title:Text("abhin"),
        subtitle: Text('1285963212'),
        leading: CircleAvatar(
          backgroundImage:NetworkImage("https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          child: Icon(Icons.person),
        ),
        trailing: Icon(Icons.phone),
      ),

      ),
    ListTile(
    title:Text("arun"),
    subtitle: Text('452639874'),
    leading: CircleAvatar(
    backgroundImage:NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    child: Icon(Icons.person),
    ),
    trailing: Icon(Icons.phone),
    ),

      ListTile(
        title:Text("faris"),
        subtitle: Row(
          children: [
            Icon(Icons.done_all),
            Text("hi?")
          ],
        ),
        leading: CircleAvatar(
          backgroundImage:NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          child: Icon(Icons.person),
        ),
        trailing: Column(
          children: [
            Text("12.34 PM"),
            CircleAvatar(
              minRadius: 5,
              maxRadius: 10,
              backgroundColor: Colors.lightGreenAccent,
              child: Text('2'),
            )
          ],
        ),


      ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FaIcon(FontAwesomeIcons.google),
        FaIcon(FontAwesomeIcons.facebook),
        FaIcon(FontAwesomeIcons.instagram),
      ],
    )
    //   Text("abhin"),
    // Text("alen"),
    // Text("arun"),
    // Text("sanju"),
    // Text("faris"),
    // Text("rahul")
    
    ],
    ));
  }
}
