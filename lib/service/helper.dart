import 'package:http/http.dart' as http;
import 'dart:async';
class ApiHelper{
  static final ApiHelper _apiHelper = new ApiHelper._internal();
  static ApiHelper get instance => _apiHelper;
  ApiHelper._internal();

  String baseUrl;

   Future<dynamic> get(String endpoint) async {

    print('Api Get, url ${this.baseUrl + endpoint}');
    Map<String, String> headers = {};
    headers["Content-Type"] = "application/json";
    final response = await http.get(this.baseUrl + endpoint, headers: headers);
    print("@@@@@@ $response");
  }
}