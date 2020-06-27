import 'dart:io';

import 'package:ebazarshop/pages/slider.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:ebazarshop/drawer.dart';
import 'package:ebazarshop/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'localMarket.dart';

class ProductHorizontalcard extends StatefulWidget {
  @override
  _ProductHorizontalcardState createState() => _ProductHorizontalcardState();
}

class _ProductHorizontalcardState extends State<ProductHorizontalcard> {
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
    return SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 330,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, i) {
                // final a = listCategory[i];
                return GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(right: 1, left: 1),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: Colors.blue,
                    ),
                    child: data != null
                        ? SafeArea(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 300,
                                  child: ListView(
                                    // pageSnapping: false,
                                    scrollDirection: Axis.horizontal,
                                    physics: BouncingScrollPhysics(),
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Container(
                                              child: Material(
                                                elevation: 5.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.purple[300],
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Container(
                                                      height: 180.0,
                                                      width: 200.0,
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: NetworkImage(
                                                                  "http://ebazarshop.com/app/shop/images/Product/Grocery-Staples/Dal-Pulses/DBGC011.jpg"),
                                                              fit: BoxFit.cover),
                                                          // borderRadius: BorderRadius.horizontal(),
                                                          borderRadius: BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    10.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    10.0),
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                                color:
                                                                    Colors.purple,
                                                                blurRadius: 5.0,
                                                                offset: Offset(
                                                                    0.0, 2.0))
                                                          ]),
                                                    ),
                                                    SizedBox(
                                                      height: 1.0,
                                                    ),
                                                    Container(
                                                      width: 200,
                                                      color: Colors.purple[100],
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            "Arhar Dal",
                                                            style: TextStyle(
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Text(
                                                            "500 Grams",
                                                            style: TextStyle(
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Text(
                                                            "MRP: Rs. 65",
                                                            style: TextStyle(
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Text(
                                                            "Off: %.20",
                                                            style: TextStyle(
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Text(
                                                            "",
                                                            style: TextStyle(
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Text(
                                                            "",
                                                            style: TextStyle(
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Icon(
                                                                Icons.star,
                                                                color:
                                                                    Colors.green,
                                                                size: 15.0,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color:
                                                                    Colors.green,
                                                                size: 15.0,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color:
                                                                    Colors.green,
                                                                size: 15.0,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color:
                                                                    Colors.green,
                                                                size: 15.0,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color:
                                                                    Colors.green,
                                                                size: 15.0,
                                                              ),
                                                              SizedBox(
                                                                width: 27.0,
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          // Padding(
                                          //   padding: const EdgeInsets.only(right: 5),
                                          //   child: Container(
                                          //     height: 300,
                                          //     width: 200,
                                          //     decoration: BoxDecoration(
                                          //         border: Border.all(width: 1, color: Colors.red),
                                          //         color: Colors.blue[100],
                                          //         borderRadius: BorderRadius.only(
                                          //           // bottomRight: Radius.circular(50.0),
                                          //           // topLeft: Radius.circular(50.0),
                                          //         ),
                                          //         boxShadow: [
                                          //           BoxShadow(blurRadius: 5, color: Colors.grey[300])
                                          //         ]),
                                          //     padding: EdgeInsets.all(1),
                                          //     child: Column(
                                          //       mainAxisSize: MainAxisSize.min,
                                          //       crossAxisAlignment: CrossAxisAlignment.stretch,
                                          //       children: <Widget>[
                                          //         Container(
                                          //           margin: EdgeInsets.all(0.0),
                                          //           child: ClipRRect(
                                          //             borderRadius: BorderRadius.only(
                                          //               // bottomRight: Radius.circular(40.0),
                                          //               // topLeft: Radius.circular(50.0),
                                          //             ),
                                          //             child: Container(
                                          //               child: Material(
                                          //                 elevation: 5.0,
                                          //                 borderRadius: BorderRadius.circular(5.0),
                                          //                 color: Colors.white,
                                          //                 child: Column(
                                          //                   crossAxisAlignment:
                                          //                       CrossAxisAlignment.start,
                                          //                   children: <Widget>[
                                          //                     Container(
                                          //                       height: 180.0,
                                          //                       width: 200.0,
                                          //                       decoration: BoxDecoration(
                                          //                           image: DecorationImage(
                                          //                               image: NetworkImage(
                                          //                                   "https://www.greatbuyz.com/blog/wp-content/uploads/2017/12/online-grocery-shopping.jpg"),
                                          //                               fit: BoxFit.cover),
                                          //                           borderRadius: BorderRadius.horizontal(),
                                          //                           boxShadow: [
                                          //                             BoxShadow(
                                          //                                 color: Colors.red,
                                          //                                 blurRadius: 5.0,
                                          //                                 offset: Offset(0.0, 2.0))
                                          //                           ]),
                                          //                     ),
                                          //                     SizedBox(
                                          //                       height: 10.0,
                                          //                     ),
                                          //                     Container(
                                          //                       width: 200,
                                          //                       padding: EdgeInsets.all(1.0),
                                          //                       child: Column(
                                          //                         crossAxisAlignment:
                                          //                             CrossAxisAlignment.start,
                                          //                         children: <Widget>[
                                          //                           Text(
                                          //                             "SevenSeas Como Hand",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "Sanitizer 10*50 ml(250)",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "MRP: Rs 360 - Rs 400",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "SevenSeas Como Hand",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "Sanitizer 10*50 ml(250)",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "MRP: Rs 360 - Rs 400",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Row(
                                          //                             crossAxisAlignment:
                                          //                                 CrossAxisAlignment.center,
                                          //                             children: <Widget>[
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               SizedBox(
                                          //                                 width: 20.0,
                                          //                               ),

                                          //                             ],
                                          //                           )
                                          //                         ],
                                          //                       ),
                                          //                     ),
                                          //                   ],
                                          //                 ),
                                          //               ),
                                          //             ),
                                          //           ),
                                          //         ),
                                          //       ],
                                          //     ),
                                          //   ),
                                          // ),
                                          // Padding(
                                          //   padding: const EdgeInsets.only(right: 5),
                                          //   child: Container(
                                          //     height: 300,
                                          //     width: 200,
                                          //     decoration: BoxDecoration(
                                          //         border: Border.all(width: 1, color: Colors.red),
                                          //         color: Colors.blue[100],
                                          //         borderRadius: BorderRadius.only(
                                          //           // bottomRight: Radius.circular(50.0),
                                          //           // topLeft: Radius.circular(50.0),
                                          //         ),
                                          //         boxShadow: [
                                          //           BoxShadow(blurRadius: 5, color: Colors.grey[300])
                                          //         ]),
                                          //     padding: EdgeInsets.all(1),
                                          //     child: Column(
                                          //       mainAxisSize: MainAxisSize.min,
                                          //       crossAxisAlignment: CrossAxisAlignment.stretch,
                                          //       children: <Widget>[
                                          //         Container(
                                          //           margin: EdgeInsets.all(0.0),
                                          //           child: ClipRRect(
                                          //             borderRadius: BorderRadius.only(
                                          //               // bottomRight: Radius.circular(40.0),
                                          //               // topLeft: Radius.circular(50.0),
                                          //             ),
                                          //             child: Container(
                                          //               child: Material(
                                          //                 elevation: 5.0,
                                          //                 borderRadius: BorderRadius.circular(5.0),
                                          //                 color: Colors.white,
                                          //                 child: Column(
                                          //                   crossAxisAlignment:
                                          //                       CrossAxisAlignment.start,
                                          //                   children: <Widget>[
                                          //                     Container(
                                          //                       height: 180.0,
                                          //                       width: 200.0,
                                          //                       decoration: BoxDecoration(
                                          //                           image: DecorationImage(
                                          //                               image: NetworkImage(
                                          //                                   "https://media.istockphoto.com/photos/glass-of-fresh-tomato-juice-and-tomatoes-picture-id891806900"),
                                          //                               fit: BoxFit.cover),
                                          //                           borderRadius: BorderRadius.horizontal(),
                                          //                           boxShadow: [
                                          //                             BoxShadow(
                                          //                                 color: Colors.red,
                                          //                                 blurRadius: 5.0,
                                          //                                 offset: Offset(0.0, 2.0))
                                          //                           ]),
                                          //                     ),
                                          //                     SizedBox(
                                          //                       height: 10.0,
                                          //                     ),
                                          //                     Container(
                                          //                       padding: EdgeInsets.all(1.0),
                                          //                       child: Column(
                                          //                         crossAxisAlignment:
                                          //                             CrossAxisAlignment.start,
                                          //                         children: <Widget>[
                                          //                           Text(
                                          //                             "SevenSeas Como Hand",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "Sanitizer 10*50 ml(250)",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "MRP: Rs 360 - Rs 400",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "SevenSeas Como Hand",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "Sanitizer 10*50 ml(250)",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "MRP: Rs 360 - Rs 400",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Row(
                                          //                             crossAxisAlignment:
                                          //                                 CrossAxisAlignment.center,
                                          //                             children: <Widget>[
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               SizedBox(
                                          //                                 width: 20.0,
                                          //                               ),

                                          //                             ],
                                          //                           )
                                          //                         ],
                                          //                       ),
                                          //                     ),
                                          //                   ],
                                          //                 ),
                                          //               ),
                                          //             ),
                                          //           ),
                                          //         ),
                                          //       ],
                                          //     ),
                                          //   ),
                                          // ),
                                          // Padding(
                                          //   padding: const EdgeInsets.only(right: 5),
                                          //   child: Container(
                                          //     height: 300,
                                          //     width: 200,
                                          //     decoration: BoxDecoration(
                                          //         border: Border.all(width: 1, color: Colors.red),
                                          //         color: Colors.blue[100],
                                          //         borderRadius: BorderRadius.only(
                                          //           // bottomRight: Radius.circular(50.0),
                                          //           // topLeft: Radius.circular(50.0),
                                          //         ),
                                          //         boxShadow: [
                                          //           BoxShadow(blurRadius: 5, color: Colors.grey[300])
                                          //         ]),
                                          //     padding: EdgeInsets.all(1),
                                          //     child: Column(
                                          //       mainAxisSize: MainAxisSize.min,
                                          //       crossAxisAlignment: CrossAxisAlignment.stretch,
                                          //       children: <Widget>[
                                          //         Container(
                                          //           margin: EdgeInsets.all(0.0),
                                          //           child: ClipRRect(
                                          //             borderRadius: BorderRadius.only(
                                          //               // bottomRight: Radius.circular(40.0),
                                          //               // topLeft: Radius.circular(50.0),
                                          //             ),
                                          //             child: Container(
                                          //               child: Material(
                                          //                 elevation: 5.0,
                                          //                 borderRadius: BorderRadius.circular(5.0),
                                          //                 color: Colors.white,
                                          //                 child: Column(
                                          //                   crossAxisAlignment:
                                          //                       CrossAxisAlignment.start,
                                          //                   children: <Widget>[
                                          //                     Container(
                                          //                       height: 180.0,
                                          //                       width: 200.0,
                                          //                       decoration: BoxDecoration(
                                          //                           image: DecorationImage(
                                          //                               image: NetworkImage(
                                          //                                   "https://media.istockphoto.com/photos/glass-of-fresh-tomato-juice-and-tomatoes-picture-id891806900"),
                                          //                               fit: BoxFit.cover),
                                          //                           borderRadius: BorderRadius.horizontal(),
                                          //                           boxShadow: [
                                          //                             BoxShadow(
                                          //                                 color: Colors.red,
                                          //                                 blurRadius: 5.0,
                                          //                                 offset: Offset(0.0, 2.0))
                                          //                           ]),
                                          //                     ),
                                          //                     SizedBox(
                                          //                       height: 10.0,
                                          //                     ),
                                          //                     Container(
                                          //                       padding: EdgeInsets.all(1.0),
                                          //                       child: Column(
                                          //                         crossAxisAlignment:
                                          //                             CrossAxisAlignment.start,
                                          //                         children: <Widget>[
                                          //                           Text(
                                          //                             "SevenSeas Como Hand",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "Sanitizer 10*50 ml(250)",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "MRP: Rs 360 - Rs 400",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "SevenSeas Como Hand",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "Sanitizer 10*50 ml(250)",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Text(
                                          //                             "MRP: Rs 360 - Rs 400",
                                          //                             style: TextStyle(
                                          //                                 fontSize: 10.0,
                                          //                                 fontWeight:
                                          //                                     FontWeight.bold),
                                          //                           ),
                                          //                           Row(
                                          //                             crossAxisAlignment:
                                          //                                 CrossAxisAlignment.center,
                                          //                             children: <Widget>[
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               Icon(
                                          //                                 Icons.star,
                                          //                                 color: Colors.green,
                                          //                                 size: 15.0,
                                          //                               ),
                                          //                               SizedBox(
                                          //                                 width: 20.0,
                                          //                               ),

                                          //                             ],
                                          //                           )
                                          //                         ],
                                          //                       ),
                                          //                     ),
                                          //                   ],
                                          //                 ),
                                          //               ),
                                          //             ),
                                          //           ),
                                          //         ),
                                          //       ],
                                          //     ),
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Center(
                            child: CircularProgressIndicator(),
                          ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
