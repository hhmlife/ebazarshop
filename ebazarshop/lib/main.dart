
import 'package:ebazarshop/pages/Signup_page.dart';
import 'package:ebazarshop/pages/UserData/guestUser.dart';
import 'package:ebazarshop/pages/home_page.dart';
import 'package:ebazarshop/pages/login_page.dart';
import 'package:ebazarshop/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ebazar Shop",
      home: Constants.prefs.getBool("loggedIn") == true
          ? HomePage()
          : LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),   
        "/signup": (context) => SignupPage(),   
        "/guestuser": (context) => GuestUser()
      },
    ),
  );
}
