// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return Branch(
    id: json['id'] as int,
    name: json['name'] as String,
    nameLao: json['name_lo'] as String,
    cover: json['cover'] as String,
    detail: json['detail'] as String,
    detailLao: json['detail_lo'] as String,
  );
}

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'detail': instance.detail,
      'cover': instance.cover,
      'name_lo': instance.nameLao,
      'detail_lo': instance.detailLao,
    };
