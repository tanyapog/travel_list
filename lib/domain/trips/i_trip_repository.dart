import 'package:dartz/dartz.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/domain/trips/trip_failure.dart';

abstract class ITripRepository {
  Stream<Either<TripFailure, List<Trip>>> watchAll();
  Stream<Either<TripFailure, List<Trip>>> watchUncompleted();
  Future<Either<TripFailure, Unit>> create(Trip trip);
  Future<Either<TripFailure, Unit>> update(Trip trip);
  Future<Either<TripFailure, Unit>> delete(Trip trip);
}