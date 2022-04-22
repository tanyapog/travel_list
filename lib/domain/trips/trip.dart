import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_list/domain/core/failures.dart';
import 'package:travel_list/domain/core/value_objects.dart';
import 'package:travel_list/domain/trips/value_objects.dart';

part 'trip.freezed.dart';

@freezed
class Trip with _$Trip {
  const Trip._();

  const factory Trip({
    required UniqueId id,
    required TripName name,
    required TripDescription description,
    @Default(false) bool complete,
    // DateTime? startDate,
    // DateTime? endDate,
    required  DateTime dateCreated,
  }) = _Trip;

  factory Trip.empty() => Trip(
    id: UniqueId(),
    name: TripName(''),
    description: TripDescription(''),
    dateCreated: DateTime.now(),
  );

  Option<ValueFailure<dynamic>> get failureOption =>
    name.failureOrUnit
    .andThen(description.failureOrUnit)
    .fold((failure) => some(failure), (_) => none());
}
