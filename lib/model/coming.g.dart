// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coming.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coming _$ComingFromJson(Map<String, dynamic> json) {
  return Coming(
    section: json['section'] as String,
    sectionLao: json['section_lo'] as String,
    movies: (json['movies'] as List)
        .map((e) => Movie.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ComingToJson(Coming instance) => <String, dynamic>{
      'section': instance.section,
      'section_lo': instance.sectionLao,
      'movies': instance.movies,
    };
