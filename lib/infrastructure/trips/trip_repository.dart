import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:travel_list/domain/trips/i_trip_repository.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/domain/trips/trip_failure.dart';
import 'package:travel_list/infrastructure/core/firestore_helpers.dart';
import 'package:travel_list/infrastructure/trips/trip_dtos.dart';

@LazySingleton(as: ITripRepository)
class TripRepository implements ITripRepository {
  final FirebaseFirestore _firestore;

  TripRepository(this._firestore);

  CollectionReference<TripDto> getTripCollectionRef(DocumentReference userDoc) =>
    userDoc.tripCollection
      .withConverter(
        fromFirestore: (snapshot, _) => TripDto.fromFirestore(snapshot),
        toFirestore: (tripDto, _) => tripDto.toJson(),
      );

  @override
  Future<Either<TripFailure, Unit>> create(Trip trip) async {
    try {
      final userDoc = await _firestore.userDocument();
      final tripDto = TripDto.fromDomain(trip);
      await userDoc.tripCollection.doc(tripDto.id).set(tripDto.toJson());
      return right(unit);
    } catch (e) {
      return left(TripFailure.fromError(e));
    }
  }

  @override
  Future<Either<TripFailure, Unit>> update(Trip trip) async {
    try {
      final userDoc = await _firestore.userDocument();
      final tripDto = TripDto.fromDomain(trip);
      await userDoc.tripCollection.doc(tripDto.id).update(tripDto.toJson());
      return right(unit);
    } catch (e) {
      return left(TripFailure.fromError(e));
    }
  }

  @override
  Future<Either<TripFailure, Unit>> delete(Trip trip) async {
    try {
      final userDoc = await _firestore.userDocument();
      final tripId = trip.id.getOrCrash();
      await userDoc.tripCollection.doc(tripId).delete();
      return right(unit);
    } catch (e) {
      return left(TripFailure.fromError(e));
    }
  }

  @override
  Stream<Either<TripFailure, List<Trip>>> watchAll() async* {
    final tripCollection = getTripCollectionRef(await _firestore.userDocument());
    yield* tripCollection
      .orderBy('serverTimeStamp', descending: true)
      .snapshots() // it's optimized and cheaper than .getDocuments which always loads all the documents
      .map((snapshot) => right<TripFailure, List<Trip>>(
        snapshot.docs.map((doc) =>
          doc.data().toDomain(),).toList(),),)
      .onErrorReturnWith((e, stackTrace) => left(TripFailure.fromError(e)));
  }

  @override
  Stream<Either<TripFailure, List<Trip>>> watchUncompleted() async* {
    final tripCollection = getTripCollectionRef(await _firestore.userDocument());
    yield* tripCollection
      .orderBy('serverTimeStamp', descending: true)
      .snapshots() // it's optimized and cheaper than .getDocuments
      .map((snapshot) =>
        snapshot.docs.map((doc) =>
          doc.data().toDomain(),),)
      .map((trips) => right<TripFailure, List<Trip>>(
        trips.where((trip) => !trip.complete).toList(),),)
      .onErrorReturnWith((e, stackTrace) => left(TripFailure.fromError(e)));
  }
}
