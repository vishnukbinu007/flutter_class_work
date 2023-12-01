import 'package:flutter/material.dart';
import 'package:flutter_class_work/home.dart';
import 'package:flutter_class_work/signup.dart';
void main (){
  runApp(MaterialApp(home: Stateful_login(),));
}
class Stateful_login extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=>  _Stateful_LoginState();


}

class _Stateful_LoginState extends State<Stateful_login> {

  final validkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: validkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login page",
                  style:TextStyle(fontSize: 30),

                ),
                TextFormField(
                  validator: (email){
                    if(email!.isEmpty || !email.contains('@') || !email.contains('gmail.com')){
                      return "InValid email";
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Username"),
                  ),
            const SizedBox(
              height: 15,
            ),
                TextFormField(
                  validator: (password){
                    if(password!.isEmpty || password.length < 6){
                      return "Password must not be empty or lenght should be greater than 6";
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password"),
                ),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                    onPressed: (){
                     final valid = validkey.currentState!.validate();
                     if ( valid == true){
                       Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> Signup()));
                     }
                     else {
                       ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(
                           backgroundColor: Colors.red,
                           content: Text("Invalid email / password"),
                         )
                         );
                     }
                    },
                  shape: StadiumBorder(),
                  color: Colors.green,
                  child: Text ("login"),
                ),
                TextButton(
                    onPressed: (){},
                    child: const Text("Not a user? register here!"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
