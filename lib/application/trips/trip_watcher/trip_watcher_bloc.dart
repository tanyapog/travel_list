import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/domain/trips/i_trip_repository.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/domain/trips/trip_failure.dart';

part 'trip_watcher_event.dart';
part 'trip_watcher_state.dart';
part 'trip_watcher_bloc.freezed.dart';

@injectable
class TripWatcherBloc extends Bloc<TripWatcherEvent, TripWatcherState> {
  
  final ITripRepository _tripRepository;
  TripWatcherBloc(this._tripRepository) : super(const TripWatcherState.initial());
  // we could not use yield* for watchAllStarted and watchUncompletedStarted
  // because it will be yielding permanently while the trips page is open (i.e. repository is opened)
  // so we listen to repository instead and add a TripsReceived Event if need
  StreamSubscription<Either<TripFailure, List<Trip>>> _tripStreamSubscription;
  
  @override
  Stream<TripWatcherState> mapEventToState(
    TripWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const TripWatcherState.loadInProgress();
        await _tripStreamSubscription.cancel();
        _tripStreamSubscription = _tripRepository
            .watchAll()
            .listen((failureOrTrips) =>
          add(TripWatcherEvent.tripsReceived(failureOrTrips)),
        );
      },
      watchUncompletedStarted: (e) async* {
        yield const TripWatcherState.loadInProgress();
        await _tripStreamSubscription.cancel();
        _tripStreamSubscription = _tripRepository
            .watchUncompleted()
            .listen((failureOrTrips) =>
            add(TripWatcherEvent.tripsReceived(failureOrTrips)),
        );
      },
      tripsReceived: (e) async* {
        yield e.failureOrTrips.fold(
          (failure) => TripWatcherState.loadFailure(failure),
          (trips) => TripWatcherState.loadSuccess(trips),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _tripStreamSubscription.cancel();
    return super.close();
  }
}
