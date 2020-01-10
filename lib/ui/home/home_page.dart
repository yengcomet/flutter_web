import 'package:flutter/material.dart';
import 'package:flutter_web/ui/widget/gridview_widget.dart';
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
      body: GridViewWidget(
        imagePath:
            "http://app.cityplexlaos.com/storage/app/uploads/public/5e0/c4e/607/5e0c4e607f007977967162.jpg",
        title: "ip man",
        description: '',
      ),
    );
  }
}
