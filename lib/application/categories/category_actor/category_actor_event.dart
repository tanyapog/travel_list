part of 'category_actor_bloc.dart';

@freezed
abstract class CategoryActorEvent with _$CategoryActorEvent{
  const factory CategoryActorEvent.reorderFinished(List<Category> categories) = _ReorderFinished;
  const factory CategoryActorEvent.deleted(Category category) = _Deleted;
}
