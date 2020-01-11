import 'dart:convert';
import 'package:flutter_web/model/movie.dart';
import 'package:flutter_web/service/api_server.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class FetchMoviesApiService extends FlutterWebApi with FlutterWebApiGetVideoApi{
  @override
  Future getMovies() {
     String url = this.baseUrl + Endpoint.movies;

    return http.get(url).then((http.Response response) {
      final res = response.body;
      try {
        final mapResult = decoder.convert(res).first;
        return Movie.fromJson(mapResult).id;
      } catch (error) {
        return Future.error("Something wrong happened");
      }
    });
  }
}