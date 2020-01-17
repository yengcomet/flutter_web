import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_web/ui/ui_constractor.dart';
import 'api.dart';
import 'class.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => _HomePageState();
}

class _HomePageState extends State {
  var movies = new List<Showing>();

  _getMovies() {
    API.getMovies().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        movies = list.map((model) => Showing.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getMovies();
  }

  dispose() {
    super.dispose();
  }

  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter web"),
          centerTitle: true,
          backgroundColor: appBarColor,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate:
                new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            primary: false,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return Card(child: ListTile(title: Text(movies[index].title)));
            },
          ),
        ));
  }
}
