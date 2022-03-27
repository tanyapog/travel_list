import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  CategoryActorBloc(this._categoryRepository) : super(const CategoryActorState.initial()) {
    on<CategoryActorEvent>(
      (event, emit) => event.map(
        reorderFinished: (event) async {
          final categoryResult = await _categoryRepository.reorder(event.categories);
          emit(categoryResult.when(
            success: (_) => const CategoryActorState.reorderSuccess(),
            failure: (failure) => CategoryActorState.reorderFailure(failure),
          ),);
        },
        deleted: (event) async {
          final categoryResult = await _categoryRepository.delete(event.category);
          emit(categoryResult.when(
            success: (_) => const CategoryActorState.deleteSuccess(),
            failure: (failure) => CategoryActorState.deleteFailure(failure),
          ),);
        },
      ),
      transformer: sequential(),
    );
  }
}
