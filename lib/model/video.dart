import 'package:flutter_web/model/branch.dart';
import 'package:flutter_web/model/coming.dart';
import 'package:flutter_web/model/movie.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video.g.dart';

@JsonSerializable()
class Video{

  @JsonKey(name: 'branches', nullable: false)
  List<Branch> branches;

  @JsonKey(name: 'showing', nullable: false)
  List<Movie> showing;

  @JsonKey(name: 'coming', nullable: false)
  List<Coming> coming;

  Video({this.branches, this.showing, this.coming});
  factory Video.fromJson(Map<String, dynamic> json) =>
      _$VideoFromJson(json);
  Map<String, dynamic> toJson() => _$VideoToJson(this);
  
}