import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_list/domain/core/failures.dart';
import 'package:travel_list/domain/core/value_objects.dart';
import 'package:travel_list/domain/trips/value_objects.dart';

part 'trip.freezed.dart';

@freezed
abstract class Trip implements _$Trip {

  const Trip._();

  const factory Trip({
    @required UniqueId id,
    @required TripName name,
    @required TripDescription description,
    @Default(false) bool complete,
//    todo
//    DateTime start,
//    DateTime end,
//    DateTime created,
//    DateTime updated,
  }) = _Trip;

  factory Trip.empty() => Trip(
    id: UniqueId(),
    name: TripName(''),
    description: TripDescription(''),
//    created: DateTime.now(), // todo make sure every single trip will have date created
  );

  Option<ValueFailure<dynamic>> get failureOption =>
      name.failureOrUnit
      .andThen(description.failureOrUnit)
      .fold((failure) => some(failure), (_) => none());
}
