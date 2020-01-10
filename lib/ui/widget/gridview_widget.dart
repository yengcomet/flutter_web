import 'package:flutter/material.dart';
import 'package:flutter_web/ui/widget/ui_constractor.dart';

class GridViewWidget extends StatelessWidget {
  String title;
  String imagePath;
  String description;
  GridViewWidget({this.description, this.imagePath, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: gridviewCorlor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Image.network(imagePath)),
                SizedBox(
                  height: 20,
                ),
                Text(title),
                SizedBox(
                  height: 20,
                ),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
