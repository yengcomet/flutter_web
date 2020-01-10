import 'package:flutter_web/model/movie.dart';
import 'package:json_annotation/json_annotation.dart';

part 'coming.g.dart';

@JsonSerializable()
class Coming{

  @JsonKey(name: 'section', nullable: false)
  String section;

  @JsonKey(name: 'section_lo', nullable: false)
  String sectionLao;

  @JsonKey(name: 'movies', nullable: false)
  List<Movie> movies;

  Coming({this.section, this.sectionLao, this.movies});
  factory Coming.fromJson(Map<String, dynamic> json) =>
      _$ComingFromJson(json);
  Map<String, dynamic> toJson() => _$ComingToJson(this);
  
}