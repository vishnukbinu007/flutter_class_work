import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(home: DrawerEx(),
  theme: ThemeData(primarySwatch:Colors.lime ),
  ));

}

class DrawerEx extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Drawer"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.lime,
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(

              otherAccountsPictures: [
                CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1700380355880-878a1baea11c?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),),
                CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1700324022450-f143742da6c1?q=80&w=1886&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),)
              ],
              decoration: BoxDecoration(image:DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1700422300144-713dad3a1c4a?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  fit: BoxFit.fill), ),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1700493624764-f7524969037d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),),
                accountName: Text("Vishnu"),
                accountEmail: Text("vishnu@gmail.com")
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text("camera"),
              leading: Icon(Icons.camera_alt_outlined),
            ),
          ],
        )
      ),
    );
  }
}
