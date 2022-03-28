part of 'trip_watcher_bloc.dart';

@freezed
class TripWatcherEvent with _$TripWatcherEvent {
    const factory TripWatcherEvent.watchAllStarted() = _WatchAllStarted;
    const factory TripWatcherEvent.watchUncompletedStarted() = _WatchUncompletedStarted;
}
