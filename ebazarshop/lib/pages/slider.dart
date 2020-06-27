
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class  HomeSlider extends StatefulWidget {
  @override
  _HomeSliderState createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
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
    return Container(
              height: 150,
              color: Colors.blue,
              padding: const EdgeInsets.all(1.0),
              child: data != null
                  ? ListView.builder(
                        shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 150,
                          child: Container(
                            height: 310,
                            padding: EdgeInsets.all(0),
                            child: Container(
                              // height: double.infinity,
                              // width: double.infinity,
                              color: Colors.red[100],
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 0,
                                    top: 0,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              // bottomLeft: Radius.circular(50.0),
                                              // bottomRight: Radius.circular(80.0),
                                              ),
                                          gradient: LinearGradient(colors: [
                                            Colors.orange,
                                            Colors.pink,
                                          ])),
                                      // padding: EdgeInsets.only(left: 5.0, top: 5),
                                      // child: ProductCategories(),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 80,
                                    top: 130,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                        Colors.orange[200],
                                        Colors.pink[200],
                                      ])),
                                      // padding: EdgeInsets.only(left: 5.0, top: 5),
                                      // child: ProductCategories(),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    right: 10,
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          height: 140,
                                          child: Swiper(
                                            itemCount: 1,
                                            autoplay: true,
                                            curve: Curves.easeIn,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Image.network(
                                                  'http://ebazarshop.com/app/shop/images/Banner/website_fish.jpg',
                                                  fit: BoxFit.cover);
                                                  //  Image.network(
                                                  // 'http://ebazarshop.com/app/shop/images/Banner/maggi_web.jpg',
                                                  // fit: BoxFit.cover); Image.network(
                                                  // 'http://ebazarshop.com/app/shop/images/Banner/maggi_web.jpg',
                                                  // fit: BoxFit.cover);
                                            },
                                          ),
                                        ),
                                        Container(
                                          height: 140,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        Positioned(
                                          bottom: 20,
                                          left: 20,
                                          child: Text(
                                            "Flash Deals",
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              backgroundColor: Colors.purple,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    top: 250,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "http://getdrawings.com/vectors/vector-wallpaper-4.jpg"),
                                              fit: BoxFit.fill),
                                          gradient: LinearGradient(colors: [
                                            Colors.pink[100],
                                            Colors.orange,
                                            Colors.pink[100],
                                          ])),
                                      // padding: EdgeInsets.only(left: 5.0, top: 5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: 1,
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
            
    );
  }
}