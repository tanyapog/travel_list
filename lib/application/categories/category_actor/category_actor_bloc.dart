import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/domain/categories/category_failure.dart';
import 'package:travel_list/domain/categories/i_category_repository.dart';

part 'category_actor_event.dart';
part 'category_actor_state.dart';
part 'category_actor_bloc.freezed.dart';

@injectable
class CategoryActorBloc extends Bloc<CategoryActorEvent, CategoryActorState> {

  final ICategoryRepository _categoryRepository;

  CategoryActorBloc(this._categoryRepository) : super(const CategoryActorState.initial());

  @override
  Stream<CategoryActorState> mapEventToState(CategoryActorEvent event) async* {
    yield const CategoryActorState.actionInProgress();
    yield* event.map(
      reorderFinished: (e) async* {
        await _categoryRepository.reorder(e.categories);
        yield const CategoryActorState.reorderSuccess();
      },
      deleted: (e) async* {
        await _categoryRepository.delete(e.category);
        yield const CategoryActorState.deleteSuccess();
      } ,
    );
  }
}
