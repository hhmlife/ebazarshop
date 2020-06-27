import 'dart:io';

import 'package:ebazarshop/pages/slider.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:ebazarshop/drawer.dart';
import 'package:ebazarshop/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'localMarket.dart';
import 'marketOffers.dart';

class MarketCategories extends StatefulWidget {
  @override
  _MarketCategoriesState createState() => _MarketCategoriesState();
}

class _MarketCategoriesState extends State<MarketCategories> {
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
    return Column(
      children: [
        Container(
          color: Colors.blue,
          padding: const EdgeInsets.all(1.0),
          child: data != null
              ? GridView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Image.network(data[index]["url"],
                              fit: BoxFit.cover),
                        ),
                      ),
                    );
                  },
                  itemCount: 6,
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ],
    );
  }
}
