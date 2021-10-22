// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookResponse _$$_BookResponseFromJson(Map<String, dynamic> json) =>
    _$_BookResponse(
      Items: (json['Items'] as List<dynamic>)
          .map((e) => BookData.fromJson(e as Map<String, dynamic>))
          .toList(),
      hits: json['hits'] as int,
    );

Map<String, dynamic> _$$_BookResponseToJson(_$_BookResponse instance) =>
    <String, dynamic>{
      'Items': instance.Items,
      'hits': instance.hits,
    };
