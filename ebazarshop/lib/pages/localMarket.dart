import 'dart:convert';
import 'package:ebazarshop/pages/groceryMarket.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'marketCategoriespage.dart';
import 'marketOffers.dart';

class LocalMarket extends StatefulWidget {
  @override
  _LocalMarketState createState() => _LocalMarketState();
}

class _LocalMarketState extends State<LocalMarket> {
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
          height: 70,
          padding: EdgeInsets.all(0),
          child: Container(
            // height: double.infinity,
            // width: double.infinity,
            color: Colors.red[100],
            child: Stack(
              children: <Widget>[
                GestureDetector(
                      onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MarketOffers()));
          },
                                  child: Positioned(
                    bottom: 10,
                    top: 10,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.hipwallpaper.com/i/64/15/3xgKWk.jpg"),
                              fit: BoxFit.cover),
                          gradient: LinearGradient(colors: [
                            Colors.pink[100],
                            Colors.orange,
                            Colors.pink[100],
                          ])),
                      // padding: EdgeInsets.only(left: 5.0, top: 5),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 12,
                  top: 25,
                  left: 0,
                  right: 100,
                  child: Container(
                    color: Colors.orange,
                    // padding: EdgeInsets.only(left: 1.0, top: 0.0),
                    child: Text('Grocery Market',
                        style: Theme.of(context).textTheme.title.merge(
                            TextStyle(
                                fontSize: 20.0,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                backgroundColor: Colors.orange))),
                  ),
                ),
              ],
            ),
          ),
        ),
        GroceryMarket(),
      ],
    );
  }
}
