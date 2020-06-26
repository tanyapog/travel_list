import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_failure.freezed.dart';

@freezed
abstract class TripFailure with _$TripFailure {
  const factory TripFailure.unexpected() = _Unexpected;
  const factory TripFailure.insufficientPermission() = _InsufficientPermission;
}