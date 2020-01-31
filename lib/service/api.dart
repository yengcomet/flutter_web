
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

const baseUrl = "http://app.cityplexlaos.com/api/v2";
class MovieAPI {
  Future<Map> getMovies() async {
    var url = baseUrl + "/main";
    Map<String, String> headers = {'Content-type':"application/json, charset=utf-8"};
    http.Response response = await http.get(url, headers: headers);
    return json.decode(response.body);
  }

   Future<Map> getMovieDetails(int movieID, int branchID) async{
    var url = baseUrl + "/movies/" + movieID.toString() + "/branch/" + branchID.toString();
    Map<String, String> headers = {'Content-type':"application/json, charset=utf-8"};
    http.Response response = await http.get(url, headers: headers);
    return json.decode(response.body);
  }
}