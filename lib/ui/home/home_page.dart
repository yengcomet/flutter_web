import 'package:flutter/material.dart';
import 'package:flutter_web/ui/widget/ui_constractor.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudCorlor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Flutter Web'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 80),
        
      ),
    );
  }
}
