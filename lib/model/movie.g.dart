// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return Movie(
    id: json['id'] as int,
    title: json['title'] as String,
    titleLao: json['title_lo'] as String,
    description: json['description'] as String,
    descriptionLao: json['description_lo'] as String,
    duration: json['duration'] as int,
    releasedDate: json['released_date'] as String,
    poster: json['poster'] as String,
    youtubeID: json['youtube_id'] as String,
  );
}

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'title_lo': instance.titleLao,
      'description': instance.description,
      'description_lo': instance.descriptionLao,
      'duration': instance.duration,
      'released_date': instance.releasedDate,
      'youtube_id': instance.youtubeID,
      'poster': instance.poster,
    };
