import 'dart:convert';

import 'package:flutter_web/service/helper.dart';

class FlutterWebApi {
  final JsonDecoder decoder = new JsonDecoder();
  final String baseUrl;
  ApiHelper api = ApiHelper.instance;
  FlutterWebApi({this.baseUrl = "http://app.cityplexlaos.com/api/v2"}) {
    api.baseUrl = this.baseUrl;
  }
}

class Endpoint{
  static String movies = "/main";
}

abstract class FlutterWebApiGetVideoApi{
  Future getMovies();
}