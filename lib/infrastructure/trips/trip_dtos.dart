import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_list/domain/core/value_objects.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/domain/trips/value_objects.dart';

part 'trip_dtos.freezed.dart';
part 'trip_dtos.g.dart';

@freezed
class TripDto implements _$TripDto {

  const TripDto._();

  const factory TripDto({
    @JsonKey(ignore: true) String? id,
    required String name,
    required String description,
    required bool complete,
    @ServerTimestampConverter() required FieldValue serverTimeStamp, // todo rename to dateUpdated
  }) = _TripDto;

  factory TripDto.fromDomain(Trip trip) => TripDto(
    id: trip.id.getOrCrash(),
    name: trip.name.getOrCrash(),
    description: trip.description.getOrCrash(),
    complete: trip.complete,
    serverTimeStamp: FieldValue.serverTimestamp(),
  );

  Trip toDomain() => Trip(
    id: UniqueId.fromUniqueString(id),
      name: TripName(name),
      description: TripDescription(description),
      complete: complete,
    );

  factory TripDto.fromJson(Map<String, dynamic> json) =>
    _$TripDtoFromJson(json);

  factory TripDto.fromFirestore(DocumentSnapshot doc) =>
    TripDto.fromJson(doc.data()).copyWith(id: doc.id);
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  // need to class be an annotation
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) => FieldValue.serverTimestamp();

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}