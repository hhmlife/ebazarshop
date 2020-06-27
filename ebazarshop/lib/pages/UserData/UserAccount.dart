import 'dart:io';

import 'package:ebazarshop/pages/productHorizontalcard.dart';
import 'package:ebazarshop/pages/slider.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:ebazarshop/drawer.dart';
import 'package:ebazarshop/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../marketCategories.dart';
import '../marketOffers.dart';


class UserAccount extends StatefulWidget {
  @override
  _UserAccountState createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
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
          child: Text("UserAccount"),
        ),
      ],
    );
  }
}
