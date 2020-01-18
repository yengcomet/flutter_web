import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_web/ui/ui_constractor.dart';
import 'package:http/http.dart' as http;

class MYHomePage extends StatefulWidget {
  @override
  _MYHomePageState createState() => _MYHomePageState();
}

class _MYHomePageState extends State<MYHomePage> {
  Future<Map> getMovies() async {
    String baseUrl = "http://app.cityplexlaos.com/api/v2/main";
    http.Response response = await http.get(baseUrl);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Web"),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
      body: FutureBuilder(
        future: getMovies(),
        builder: (context, snapshot) {
          Map data = snapshot.data;
          if (snapshot.hasError) {
            print("Your Erro ${snapshot.error}");
            return Text(
              "Failed to get respone from the server",
              style: TextStyle(
                color: Colors.red,
                fontSize: 22.0,
              ),
            );
          } else if (snapshot.hasData) {
            return Center(
              child: GridView.builder(
                gridDelegate:
                new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: Image.network(
                                '${data['showing'][index]['poster']}'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('${data['showing'][index]['title']}',style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 10,
                        ),
                        Text('${data['coming'][index]['section_lo']}',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  );
                },
              ),
            );
          } else if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: appBarColor,
              ),
            );
          }
        },
      ),
    );
  }
}