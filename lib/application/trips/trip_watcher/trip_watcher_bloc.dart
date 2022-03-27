import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/domain/trips/i_trip_repository.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/domain/trips/trip_failure.dart';

part 'trip_watcher_bloc.freezed.dart';
part 'trip_watcher_event.dart';
part 'trip_watcher_state.dart';

@injectable
class TripWatcherBloc extends Bloc<TripWatcherEvent, TripWatcherState> {
  // we could not use yield* for watchAllStarted and watchUncompletedStarted
  // because it will be yielding permanently while the trips page is open (i.e. repository is opened)
  // so we listen to repository instead and add a TripsReceived Event if need
  StreamSubscription<Either<TripFailure, List<Trip>>>? _tripStreamSubscription;

  final ITripRepository _tripRepository;
  TripWatcherBloc(this._tripRepository) : super(const TripWatcherState.initial()){
    on<TripWatcherEvent>(
      (event, emit) => event.map(
        watchAllStarted: (event) async {
          emit(const TripWatcherState.loadInProgress());
          await _tripStreamSubscription?.cancel();
          _tripStreamSubscription = _tripRepository
            .watchAll()
            .listen((failureOrTrips) =>
              add(TripWatcherEvent.tripsReceived(failureOrTrips)),);
        },
        watchUncompletedStarted: (event) async {
          emit(const TripWatcherState.loadInProgress());
          await _tripStreamSubscription?.cancel();
          _tripStreamSubscription = _tripRepository
            .watchUncompleted()
            .listen((failureOrTrips) =>
              add(TripWatcherEvent.tripsReceived(failureOrTrips)),);
        },
        tripsReceived: (event) =>
          emit(event.failureOrTrips.fold(
            (failure) => TripWatcherState.loadFailure(failure),
            (trips) => TripWatcherState.loadSuccess(trips),
          ),),
      ),
      transformer: sequential(),
    );
  }

  @override
  Future<void> close() async {
    await _tripStreamSubscription?.cancel();
    return super.close();
  }
}
