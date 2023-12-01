import 'package:flutter/material.dart';
import 'package:flutter_class_work/home.dart';
void main (){
  runApp(MaterialApp(home: Stateful_Registration
    (),));
}
class Stateful_Registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> _Stateful_Registration();


}

class _Stateful_Registration extends State<Stateful_Registration> {
  final namecntrl = TextEditingController();
  final passcntrl = TextEditingController();
  final validkey = GlobalKey<FormState>();
  String? pwd;
  bool showpwd = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration page'),
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
                  "Registration page",
                  style: TextStyle(fontSize: 30),

                ),
                TextFormField(
                  validator: (email) {
                    if (email!.isEmpty || !email.contains('@') ||
                        !email.contains('gmail.com')) {
                      return "InValid email";
                    }
                  },
                  decoration: InputDecoration(

                      border: OutlineInputBorder(),
                      hintText: "Username"),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passcntrl,
                  validator: (password) {
                    pwd = password;

                    if (password!.isEmpty || password.length < 6) {
                      return "Password must not be empty or lenght should be greater than 6";
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          if (showpwd == true) {
                            showpwd = false;
                          } else {
                            showpwd = true;
                          }
                        });
                      },
                          icon: Icon(showpwd == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),


                      border: OutlineInputBorder(),
                      hintText: "Password"),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (confirmpassword) {
                    if (confirmpassword!.isEmpty ||
                        confirmpassword.length < 6) {
                      return "confirm password must be same";
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          if (showpwd == true) {
                            showpwd = false;
                          } else {
                            showpwd = true;
                          }
                        });
                      },
                          icon: Icon(showpwd == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),

                      border: OutlineInputBorder(),
                      hintText: "Confirm password"),
                ),
                const SizedBox(
                  height: 15,
                ),

                MaterialButton(
                  onPressed: () {
                    final valid = validkey.currentState!.validate();
                    if (valid == true) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
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
                  child: Text("login"),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text("Not a user? register here!"))
              ],
            ),
          ),
        ),
      ),

    );
  }
}
