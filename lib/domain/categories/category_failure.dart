import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_failure.freezed.dart';

@freezed
class CategoryFailure with _$CategoryFailure {
  const factory CategoryFailure.insufficientPermission(PlatformException e, String message) = _InsufficientPermission;
  const factory CategoryFailure.unableToUpdate(PlatformException e, String message) = _UnableToUpdate;
  const factory CategoryFailure.platformSpecific(PlatformException e, String message) = _PlatformSpecific;
  const factory CategoryFailure.unexpected(Exception e, String message) = _Unexpected;
  const factory CategoryFailure.unableToProcess(dynamic obj, String message) = _UnableToProcess;

  factory CategoryFailure.fromError(e) {
    if (e is Exception) {
      if (e is PlatformException) {
        if (e.message.contains('PERMISSION_DENIED')) { return CategoryFailure
            .insufficientPermission(e, "Insufficient Permission");
        } else if (e.message.contains('NOT_FOUND')) { return CategoryFailure
            .unableToUpdate(e, "Unable to update category. Was it deleted from another device?");
        } else { return CategoryFailure
            .unexpected(e, "Unexpected platform error: \n${e.message}");
        }
      } else { return CategoryFailure
          .unexpected(e, "Unexpected error: \n$e");
      }
    } else { return CategoryFailure
        .unableToProcess(e, "Not acceptable: \n $e");
    }
  }
}