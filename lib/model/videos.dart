import 'package:json_annotation/json_annotation.dart';
// part 'videos.g.dart';

@JsonSerializable()
class VideoModel {
  @JsonKey(name: 'branches', nullable: false)
  List<dynamic> branches;

  @JsonKey(name: 'showing', nullable: false)
  List<dynamic> showing;

  @JsonKey(name: 'coming', nullable: false)
  List<dynamic> coming;

  VideoModel({this.branches, this.showing, this.coming});
  // factory VideoModel.fromJson(Map<String, dynamic> json) =>
  //     _$VideoModelFromJson(json);
  // Map<String, dynamic> toJson() => _$VideoModelToJson(this);
}