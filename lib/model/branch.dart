import 'package:json_annotation/json_annotation.dart';

part 'branch.g.dart';

@JsonSerializable()
class Branch{
  @JsonKey(name: 'id', nullable: false)
  int id;

  @JsonKey(name: 'name', nullable: false)
  String name;

  @JsonKey(name: 'detail', nullable: false)
  String detail;

  @JsonKey(name: 'cover', nullable: false)
  String cover;

  @JsonKey(name: 'name_lo', nullable: false)
  String nameLao;

  @JsonKey(name: 'detail_lo', nullable: false)
  String detailLao;

  Branch({this.id, this.name, this.nameLao, this.cover, this.detail, this.detailLao});
  factory Branch.fromJson(Map<String, dynamic> json) =>
      _$BranchFromJson(json);
  Map<String, dynamic> toJson() => _$BranchToJson(this);
  
}