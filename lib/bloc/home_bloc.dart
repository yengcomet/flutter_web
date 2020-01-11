import 'dart:async';

import 'package:flutter_web/model/video.dart';
import 'package:flutter_web/service/api_fetch_video.dart';

class HomeBloc{
  final FetchVideoApiService _apiService;
  FetchVideoApiService get apiService => _apiService;

  HomeBloc({FetchVideoApiService apiService}): this._apiService = apiService ?? FetchVideoApiService();

   StreamController _videoStreamController =
      StreamController<List<Video>>.broadcast();
  Stream get videoDispley => _videoStreamController.stream.asBroadcastStream();


  fetchVideos(){
    _videoStreamController.sink.add(null);
    _apiService.getVideos().then((results) {
      _videoStreamController.add(results);
    }).catchError((error) {
      _videoStreamController.addError(error);
    });
  }

  dispose(){
    _videoStreamController.close();
  }

}