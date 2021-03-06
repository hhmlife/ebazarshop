import 'dart:io';

import 'package:ebazarshop/pages/productHorizontalcard.dart';
import 'package:ebazarshop/pages/slider.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:ebazarshop/drawer.dart';
import 'package:ebazarshop/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'localMarket.dart';
import 'marketCategories.dart';
import 'marketOffers.dart';

class MarketCategoriespage extends StatefulWidget {
  @override
  _MarketCategoriespageState createState() => _MarketCategoriespageState();
}

class _MarketCategoriespageState extends State<MarketCategoriespage> {
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
        title: Text("Market Category"),
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
            
             MarketCategories(),
             MarketCategories(),
             MarketCategories(),
             
          ],
        ),
      ),
      drawer: MyDrawer(),

    );
  }
}
