// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripDto _$_$_TripDtoFromJson(Map<String, dynamic> json) {
  return _$_TripDto(
    name: json['name'] as String,
    description: json['description'] as String,
    complete: json['complete'] as bool,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_TripDtoToJson(_$_TripDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'complete': instance.complete,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
