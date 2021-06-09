part of 'category_actor_bloc.dart';

@freezed
abstract class CategoryActorState with _$CategoryActorState {
  const factory CategoryActorState.initial() = _Initial;
  const factory CategoryActorState.actionInProgress() = _ActionInProgress;
  const factory CategoryActorState.reorderFailure(CategoryFailure categoryFailure) = _ReorderFailure;
  const factory CategoryActorState.reorderSuccess() = _ReorderSuccess;
  const factory CategoryActorState.deleteFailure(CategoryFailure categoryFailure) = _DeleteFailure;
  const factory CategoryActorState.deleteSuccess() = _DeleteSuccess;
}