
import 'package:flutter/material.dart';
import 'package:flutter_web/service/api.dart';
import 'package:flutter_web/ui/detail/detail_page.dart';
import 'package:flutter_web/ui/ui_contractor.dart';
import 'package:flutter_web/widget/error_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  MovieAPI api = MovieAPI();

  @override
  void initState() {
    super.initState();
    api.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Web"),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 5,right: 5, bottom: 20),
        child: FutureBuilder(
          future: api.getMovies(),
          builder: (context, snapshot) {
            Map data = snapshot.data;
            if (snapshot.hasError) {
              print("Your Error ${snapshot.error}");
              return ErrorWidgetPage();
            } else if (snapshot.hasData) {
              return GridView.builder(
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: appBarColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage()));
                              },
                              child: Image.network(
                                  '${data['showing'][index]['poster']}'),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('${data['showing'][index]['title']}',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 5,
                          ),
                          Text('${data['coming'][index]['section_lo']}',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    );
                  },
                );
            } else {
              return Center(
                child: CircularProgressIndicator(
                  backgroundColor: appBarColor,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
