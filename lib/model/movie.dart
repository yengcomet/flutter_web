import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie{
  @JsonKey(name: 'id', nullable: false)
  int id;

  @JsonKey(name: 'title', nullable: false)
  String title;

  @JsonKey(name: 'title_lo', nullable: false)
  String titleLao;

  @JsonKey(name: 'description', nullable: false)
  String description;

  @JsonKey(name: 'description_lo', nullable: false)
  String descriptionLao;

  @JsonKey(name: 'duration', nullable: false)
  int duration;

  @JsonKey(name: 'released_date', nullable: false)
  String releasedDate;

  @JsonKey(name: 'youtube_id', nullable: false)
  String youtubeID;

  @JsonKey(name: 'poster', nullable: false)
  String poster;

  Movie({this.id, this.title, this.titleLao, this.description, this.descriptionLao, this.duration, this.releasedDate, this.poster, this.youtubeID});
  factory Movie.fromJson(Map<String, dynamic> json) =>
      _$MovieFromJson(json);
  Map<String, dynamic> toJson() => _$MovieToJson(this);
  
}