import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_web/ui/ui_constractor.dart';
import 'package:http/http.dart' as http;

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Details'),
        backgroundColor: appBarColor,
        centerTitle: true,
      ),
      body: Center(child: Text("Hello Yeng", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),),
    );
  }
}
