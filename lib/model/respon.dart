import 'package:json_annotation/json_annotation.dart';

// part 'response.g.dart';

@JsonSerializable()
class ApiResponse {
  @JsonKey(name: 'status', nullable: false)
  String status;

  @JsonKey(name: 'resultCode', nullable: false)
  int resultCode;

  @JsonKey(name: 'results', nullable: false)
  dynamic result;

  ApiResponse({this.status, this.resultCode, this.result});
  // factory ApiResponse.fromJson(Map<String, dynamic> json) =>
  //     _$ApiResponseFromJson(json);
  // Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}