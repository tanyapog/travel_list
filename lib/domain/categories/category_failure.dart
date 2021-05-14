import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_failure.freezed.dart';

@freezed
abstract class CategoryFailure with _$CategoryFailure {
  const factory CategoryFailure.unexpected() = _Unexpected;
  const factory CategoryFailure.insufficientPermission() = _InsufficientPermission;
  const factory CategoryFailure.unableToUpdate() = _UnableToUpdate;
}