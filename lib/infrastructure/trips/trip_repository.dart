import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:travel_list/domain/trips/i_trip_repository.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/domain/trips/trip_failure.dart';
import 'package:travel_list/infrastructure/core/firestore_helpers.dart';
import 'package:travel_list/infrastructure/trips/trip_dtos.dart';

@LazySingleton(as: ITripRepository)
class TripRepository implements ITripRepository {
  final Firestore _firestore;

  TripRepository(this._firestore);

  @override
  Future<Either<TripFailure, Unit>> create(Trip trip) async {
    try {
      final userDoc = await _firestore.userDocument();
      final tripDto = TripDto.fromDomain(trip);
      await userDoc.tripCollection.document(tripDto.id).setData(tripDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const TripFailure.insufficientPermission());
      } else {
        // TODO: Log these unexpected errors everywhere
        return left(const TripFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TripFailure, Unit>> update(Trip trip) async {
    try {
      final userDoc = await _firestore.userDocument();
      final tripDto = TripDto.fromDomain(trip);
      await userDoc.tripCollection.document(tripDto.id).updateData(tripDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const TripFailure.insufficientPermission());
      } else if (e is PlatformException && e.message.contains('NOT_FOUND')) {
        return left(const TripFailure.unableToUpdate());
      } else {
        // TODO: Log these unexpected errors everywhere
        return left(const TripFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TripFailure, Unit>> delete(Trip trip) async {
    try {
      final userDoc = await _firestore.userDocument();
      final tripId = trip.id.getOrCrash();
      await userDoc.tripCollection.document(tripId).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const TripFailure.insufficientPermission());
      } else if (e is PlatformException && e.message.contains('NOT_FOUND')) {
        return left(const TripFailure.unableToUpdate());
      } else {
        // TODO: Log these unexpected errors everywhere
        return left(const TripFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<TripFailure, List<Trip>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.tripCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots() // it's optimized and cheaper than .getDocuments
        .map((snapshot) => right<TripFailure, List<Trip>>(
          snapshot.documents
              .map((doc) => TripDto.fromFirestore(doc).toDomain())
              .toList(),
        ))
        .onErrorReturnWith((e) {
          if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
            return left(const TripFailure.insufficientPermission());
          } else {
            // TODO: Log these unexpected errors everywhere
            return left(const TripFailure.unexpected());
          }
        });
  }

  @override
  Stream<Either<TripFailure, List<Trip>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.tripCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots() // it's optimized and cheaper than .getDocuments
        .map((snapshot) =>
          snapshot.documents
              .map((doc) => TripDto.fromFirestore(doc).toDomain())
        )
        .map((trips) => right<TripFailure, List<Trip>>(
          trips.where((trip) => !trip.complete).toList()
        ))
        .onErrorReturnWith((e) {
          if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
            return left(const TripFailure.insufficientPermission());
          } else {
            // TODO: Log these unexpected errors everywhere
            return left(const TripFailure.unexpected());
          }
        });
  }
}
