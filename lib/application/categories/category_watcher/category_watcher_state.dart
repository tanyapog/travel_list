part of 'category_watcher_bloc.dart';

@freezed
abstract class CategoryWatcherState with _$CategoryWatcherState{
  const factory CategoryWatcherState.initial() = _Initial;
  const factory CategoryWatcherState.loadInProgress() = _LoadInProgress;
  const factory CategoryWatcherState.loadSuccess(List<Category> categories) = _LoadSuccess;
  const factory CategoryWatcherState.loadFailure(CategoryFailure categoryFailure) = _LoadFailure;
}