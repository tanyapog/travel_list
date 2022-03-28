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
  final ITripRepository _tripRepository;

  TripWatcherBloc(this._tripRepository) : super(const TripWatcherState.initial()){
    on<TripWatcherEvent>(
      (event, emit) => event.map(
        watchAllStarted: (event) async {
          emit(const TripWatcherState.loadInProgress());
          await emit.forEach<Either<TripFailure, List<Trip>>>(
            _tripRepository.watchAll(),
            onData: (failureOrTrips) => failureOrTrips.fold(
                  (failure) => TripWatcherState.loadFailure(failure),
                  (trips) => TripWatcherState.loadSuccess(trips),
            ),
          );
        },
        watchUncompletedStarted: (event) async {
          emit(const TripWatcherState.loadInProgress());
          await emit.forEach<Either<TripFailure, List<Trip>>>(
            _tripRepository.watchUncompleted(),
            onData: (failureOrTrips) => failureOrTrips.fold(
                  (failure) => TripWatcherState.loadFailure(failure),
                  (trips) => TripWatcherState.loadSuccess(trips),
            ),
          );
        },
      ),
      transformer: restartable(),
    );
  }
}
