import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:travel_list/domain/core/errors.dart';
import 'package:travel_list/domain/core/failures.dart';
import 'package:travel_list/domain/core/value_validatores.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  /// Use when you already made all of the possible checks and are sure a crash is impossible
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((failure) => throw UnexpectedValueError(failure), id);
  }

  /// get rid of all of the detailed types
  /// so that return ValueFailure<dynamic> or Unit
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit =>
    value.fold(
      (l) => left(l),
      (r) => right(unit),
    );

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  // TODO(tanya.pog): I'm not sure I'll be use it. Now it seems to me the better way is to use database generated ids.
  // Generate and return a RFC4122 v1 (timestamp-based) UUID
  // Method should be used to generate unique ids for our entities such as [Trip] or something.
  // We cannot let a simple String be passed in. This would allow for possible non-unique IDs.
  factory UniqueId() =>
    UniqueId._(right(const Uuid().v1()));

  /// Used with strings we trust are unique, such as database IDs.
  factory UniqueId.fromUniqueString(String uniqueIdStr) =>
    UniqueId._(right(uniqueIdStr));

  const UniqueId._(this.value);
}

class StringSingleLine extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) =>
    StringSingleLine._(validateSingleLine(input),);

  const StringSingleLine._(this.value);
}
