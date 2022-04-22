import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_list/domain/core/value_objects.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/domain/trips/value_objects.dart';

part 'trip_dtos.freezed.dart';
part 'trip_dtos.g.dart';

@freezed
class TripDto with _$TripDto {
  const TripDto._();

  const factory TripDto({
    // I ignore id because of firestore structure. And ignoring field in freezed class should be nullable.
    @JsonKey(ignore: true) String? id,
    required String name,
    required String description,
    required bool complete,
    DateTime? dateStart,
    DateTime? dateEnd,
    required DateTime dateCreated,
  }) = _TripDto;

  factory TripDto.fromDomain(Trip trip) => TripDto(
    id: trip.id.getOrCrash(),
    name: trip.name.getOrCrash(),
    description: trip.description.getOrCrash(),
    complete: trip.complete,
    dateStart: trip.dateStart,
    dateEnd: trip.dateEnd,
    dateCreated: trip.dateCreated,
  );

  Trip toDomain() => Trip(
    id: UniqueId.fromUniqueString(id!), // I believe id is never null
    name: TripName(name),
    description: TripDescription(description),
    complete: complete,
    dateStart: dateStart,
    dateEnd: dateEnd,
    dateCreated: dateCreated,
  );

  factory TripDto.fromJson(Map<String, dynamic> json) =>
    _$TripDtoFromJson(json);

  factory TripDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
    TripDto.fromJson(doc.data()!).copyWith(id: doc.id);
}
