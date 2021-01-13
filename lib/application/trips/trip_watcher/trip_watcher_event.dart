part of 'trip_watcher_bloc.dart';

@freezed
abstract class TripWatcherEvent with _$TripWatcherEvent {
    const factory TripWatcherEvent.watchAllStarted() = _WatchAllStarted;
    const factory TripWatcherEvent.watchUncompletedStarted() = _WatchUncompletedStarted;
    // technical event that permit us to switch between watching all and watching uncompleted trips,
    // cause tripRepository represents its as streams
    const factory TripWatcherEvent.tripsReceived(Either<TripFailure, List<Trip>> failureOrTrips) = _TripsReceived;
}