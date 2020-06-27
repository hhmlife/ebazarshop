import 'dart:convert';
import 'package:ebazarshop/drawer.dart';
import 'package:ebazarshop/pages/groceryMarket.dart';
import 'package:ebazarshop/pages/localMarket.dart';
import 'package:ebazarshop/pages/slider.dart';
import 'package:ebazarshop/utils/Constants.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class GuestUser extends StatefulWidget {
  @override
  _GuestUserState createState() => _GuestUserState();
}

class _GuestUserState extends State<GuestUser> {
  TextEditingController _nameController = TextEditingController();


  var url = "https://jsonplaceholder.typicode.com/photos";

  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text("Guest User"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Constants.prefs.setBool("loggedIn", false);
                Navigator.pushReplacementNamed(context, "/login");
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeSlider(),
           
          ],
        ),
      ),
      drawer: MyDrawer(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     myText = _nameController.text;
      //     setState(() {});
      //   },
      //   child: Icon(Icons.refresh),
      // ),
    );
  }
}
