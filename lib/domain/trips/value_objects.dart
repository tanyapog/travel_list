import 'package:dartz/dartz.dart';
import 'package:travel_list/domain/core/failures.dart';
import 'package:travel_list/domain/core/value_objects.dart';
import 'package:travel_list/domain/core/value_validatores.dart';

// https://firebase.google.com/docs/firestore/quotas
// Based on single character takes 1 byte (8 bits) to be stored in:
// 1 MB = 1024KB, 1 KB = 1024B so 1 MB has 1024 x 1024 = 1,048,576 bytes and characters
const firestoreDocumentSizeLimit = 1048576;

class TripName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 70;

  factory TripName(String input) =>
    TripName._(
      validateMaxStringLength(input, maxLength)
      .flatMap(validateStringNotEmpty)
      .flatMap(validateSingleLine),
    );

  const TripName._(this.value);
}

class TripDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = firestoreDocumentSizeLimit;

  factory TripDescription(String input) =>
    TripDescription._(
      validateMaxStringLength(input, firestoreDocumentSizeLimit),
    );

  const TripDescription._(this.value);
}
