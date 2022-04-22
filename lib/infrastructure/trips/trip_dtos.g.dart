// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripDto _$$_TripDtoFromJson(Map<String, dynamic> json) => _$_TripDto(
      name: json['name'] as String,
      description: json['description'] as String,
      complete: json['complete'] as bool,
      dateStart: json['dateStart'] == null
          ? null
          : DateTime.parse(json['dateStart'] as String),
      dateEnd: json['dateEnd'] == null
          ? null
          : DateTime.parse(json['dateEnd'] as String),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
    );

Map<String, dynamic> _$$_TripDtoToJson(_$_TripDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'complete': instance.complete,
      'dateStart': instance.dateStart?.toIso8601String(),
      'dateEnd': instance.dateEnd?.toIso8601String(),
      'dateCreated': instance.dateCreated.toIso8601String(),
    };
