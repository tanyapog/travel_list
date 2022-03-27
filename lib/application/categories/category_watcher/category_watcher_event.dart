part of 'category_watcher_bloc.dart';

@freezed
class CategoryWatcherEvent with _$CategoryWatcherEvent {
  const factory CategoryWatcherEvent.watchAllStarted() = _WatchAllStarted;
  // technical event that needed to be equal with tripWatcherBloc
  const factory CategoryWatcherEvent.categoriesReceived(CategoryResult categoryResult) = _CategoriesReceived;
}
