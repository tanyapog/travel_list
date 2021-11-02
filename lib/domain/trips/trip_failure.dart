import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_failure.freezed.dart';

@freezed
class TripFailure with _$TripFailure {
  const factory TripFailure.insufficientPermission(PlatformException e, String message) = _InsufficientPermission;
  const factory TripFailure.unableToUpdate(PlatformException e, String message) = _UnableToUpdate;
  const factory TripFailure.platformSpecific(PlatformException e, String message) = _PlatformSpecific;
  const factory TripFailure.unexpected(Exception e, String message) = _Unexpected;
  const factory TripFailure.unableToProcess(dynamic obj, String message) = _UnableToProcess;

  factory TripFailure.fromError(e) {
    if (e is Exception) {
      if (e is PlatformException) {
        final String eMessage = e.message?? 'no message';
        if (eMessage.contains('PERMISSION_DENIED')) { return TripFailure
          .insufficientPermission(e, "Insufficient Permission");
        } else if (eMessage.contains('NOT_FOUND')) { return TripFailure
          .unableToUpdate(e, "Unable to update trip. Was it deleted from another device?");
        } else { return TripFailure
          .unexpected(e, "Unexpected platform error: \n$eMessage");
        }
      } else { return TripFailure
        .unexpected(e, "Unexpected error: \n$e");
      }
    } else { return TripFailure
      .unableToProcess(e, "Not acceptable: \n $e");
    }
  }
}
