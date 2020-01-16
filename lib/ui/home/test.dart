import 'package:flutter/material.dart';
import 'package:flutter_web/model/branch.dart';
import 'package:flutter_web/model/class.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final String url = "http://app.cityplexlaos.com/api/v2/main";
  List data;

  List<BranchMovie> _branchList = List<BranchMovie>();

  @override
  void initState() {
    super.initState();
    this.fetchData();
  }

  Future<List<BranchMovie>> fetchData() async{
    var res = await http.get(url);

    var movies = List<BranchMovie>();

    if(res.statusCode == 200){
      var moviesJson = json.decode(res.body);
      for(var movieJson in moviesJson){
        movies.add(BranchMovie.fromJson(movieJson));
      }
    }
    return movies;
  }

  @override
  Widget build(BuildContext context) {
    fetchData().then((value){
      setState(() {
        _branchList.addAll(value);
      });
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter web"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _branchList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    _branchList[index].title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Hello ker",
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
