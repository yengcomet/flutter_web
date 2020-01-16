
import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://jsonplaceholder.typicode.com";

// const baseUrl = "http://app.cityplexlaos.com/api/v2";

class API {
  static Future getUsers() {
    // var url = baseUrl + "/main";
    var url = baseUrl + "/users";
    return http.get(url);
  }
}