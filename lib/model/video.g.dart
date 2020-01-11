// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Video _$VideoFromJson(Map<String, dynamic> json) {
  return Video(
    branches: (json['branches'] as List)
        .map((e) => Branch.fromJson(e as Map<String, dynamic>))
        .toList(),
    showing: (json['showing'] as List)
        .map((e) => Movie.fromJson(e as Map<String, dynamic>))
        .toList(),
    coming: (json['coming'] as List)
        .map((e) => Coming.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
      'branches': instance.branches,
      'showing': instance.showing,
      'coming': instance.coming,
    };
