import 'package:flutter_web/service/api_server.dart';

class ApiGetData extends FlutterWebApi with FlutterWebApiGetVideoApi{
  @override
  Future getVideos() {
    return this.api.get(Endpoint.getVideos).then((result){
      print("result is: $result");
      try{
        // final ApiR
      }catch (error){
        return error;
      }
    }).catchError((error){
      return Future.error(error);
    });
  }

}