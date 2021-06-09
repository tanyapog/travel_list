part of 'category_watcher_bloc.dart';

@freezed
abstract class CategoryWatcherEvent with _$CategoryWatcherEvent {
  const factory CategoryWatcherEvent.watchAllStarted() = _WatchAllStarted;
  // needed to switch between watchAll and reorder
  const factory CategoryWatcherEvent.categoriesReceived(List<Category> categories) = _CategoriesReceived;
}
