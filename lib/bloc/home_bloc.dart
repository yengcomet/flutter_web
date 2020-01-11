import 'dart:async';
import 'package:flutter_web/model/movie.dart';
import 'package:flutter_web/service/api_fetch_movie.dart';

class HomeBloc{
  final FetchMoviesApiService _apiService;
  FetchMoviesApiService get apiService => _apiService;

  HomeBloc({FetchMoviesApiService apiService}): this._apiService = apiService ?? FetchMoviesApiService();

   StreamController _moviesStreamController =
      StreamController<List<Movie>>.broadcast();
  Stream get moviesDispley => _moviesStreamController.stream.asBroadcastStream();


  fetchMovies(){
    _moviesStreamController.sink.add(null);
    _apiService.getMovies().then((results) {
      _moviesStreamController.add(results);
    }).catchError((error) {
      _moviesStreamController.addError(error);
    });
  }

  dispose(){
    _moviesStreamController.close();
  }

}