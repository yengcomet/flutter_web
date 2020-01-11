import 'package:flutter/material.dart';

class MoviesWidget extends StatelessWidget {
  final String textTitle;
  final String textTitleLaos;
  final String imagePath;
  final String date;

  MoviesWidget({this.imagePath, this.textTitle, this.date, this.textTitleLaos});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(imagePath),
            SizedBox(
              height: 20,
            ),
            Text(
              textTitle,
              style: TextStyle(
                fontSize: 46,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
