part of 'trip_watcher_bloc.dart';

@freezed
class TripWatcherState with _$TripWatcherState {
  const factory TripWatcherState.initial() = _Initial;
  const factory TripWatcherState.loadInProgress() = _LoadInProgress;
  const factory TripWatcherState.loadSuccess(List<Trip> trips) = _LoadSuccess;
  const factory TripWatcherState.loadFailure(TripFailure tripFailure) = _LoadFailure;
}
