
import 'package:ebazarshop/bg_image.dart';
import 'package:ebazarshop/utils/Constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Card(color: Colors.pink,
                    child: Column(
                      children: <Widget>[
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter Username",
                                    labelText: "Username"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password",
                                ),
                              )
                            ],
                          ),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              RaisedButton(
                                onPressed: () {
                                  Constants.prefs.setBool("loggedIn", true);
                                  Navigator.pushReplacementNamed(context, "/home");
                                },
                                child: Text("Sign In"),
                                color: Colors.green,
                                textColor: Colors.white,
                              ), 
                              SizedBox(width: 10,),

                              RaisedButton(
                                onPressed: () {
                                  Constants.prefs.setBool("loggedIn", true);
                                  Navigator.pushReplacementNamed(context, "/signup");
                                },
                                child: Text("Sign up"),
                                color: Colors.green,
                                textColor: Colors.white,
                              ),
                             
                              SizedBox(width: 15,),
                              RaisedButton(
                                onPressed: () {
                                  Constants.prefs.setBool("loggedIn", true);
                                  Navigator.pushReplacementNamed(context, "/guestuser");
                                },
                                child: Text("Guest User"),
                                color: Colors.white,
                                textColor: Colors.blue,
                              ),
                              
                             
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
