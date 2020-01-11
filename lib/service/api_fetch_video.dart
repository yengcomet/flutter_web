import 'dart:convert';
import 'package:flutter_web/service/api_server.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class FetchVideoApiService extends FlutterWebApi with FlutterWebApiGetVideoApi{
  @override
  Future getVideos() {
    return null;
  }
  // Future<List<MyVideo>> getVideos() async{
  //   var data = await http.get("http://app.cityplexlaos.com/api/v2/main");

  //   var jsonData = json.decode(data.body);

  //   List<MyVideo> videosList = [];
  //   for(var v in jsonData){
  //     // MyVideo video = MyVideo{v["id"],v["title"], v["titlelo"],v["description"], v["descriptionlo"], v["picture"]};
  //   }
  // }
}