part of 'category_watcher_bloc.dart';

@freezed
abstract class CategoryWatcherEvent with _$CategoryWatcherEvent {
  const factory CategoryWatcherEvent.watchAllStarted() = _WatchAllStarted;
}
