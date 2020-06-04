import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:travel_list/domain/core/failures.dart';
import 'package:travel_list/domain/core/value_validatores.dart';
import 'package:uuid/uuid.dart';
import 'errors.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((failure) => throw UnexpectedValueError(failure), id);
  }

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

class UniqueId extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  // TODO(tanya.pog): I'm not sure I'll be use it. Now it seems to me the better way is to use database generated ids.
  // Method should be used to generate unique ids for our entities such as [Trip] or something.
  // We cannot let a simple String be passed in. This would allow for possible non-unique IDs.
  factory UniqueId() {
    // Generate and return a RFC4122 v1 (timestamp-based) UUID
    return UniqueId._(right(Uuid().v1()));
  }

  /// Used with strings we trust are unique, such as database IDs.
  factory UniqueId.fromUniqueString(String uniqueIdStr) {
    assert (uniqueIdStr != null);
    return UniqueId._(right(uniqueIdStr));
  }

  const UniqueId._(this.value);
}

class StringSingleLine extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) {
    assert(input != null);
    return StringSingleLine._(
      validateSingleLine(input),
    );
  }

  const StringSingleLine._(this.value);
}