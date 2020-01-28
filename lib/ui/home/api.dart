
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

const baseUrl = "https://jsonplaceholder.typicode.com";

// const baseUrl = "http://app.cityplexlaos.com/api/v2";
class MovieAPI {
  Future<Map> getMovies() async {
    // var url = baseUrl + "/main";
    var url = baseUrl + "/users";
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }

   Future<Map> getMovieDetails(int movieID, int branchID) async{
    var url = baseUrl + "/movies/" + movieID.toString() + "/branch/" + branchID.toString();
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }
}