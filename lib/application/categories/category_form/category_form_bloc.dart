import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/domain/categories/category_failure.dart';
import 'package:travel_list/domain/categories/category_result.dart';
import 'package:travel_list/domain/categories/i_category_repository.dart';

part 'category_form_event.dart';
part 'category_form_state.dart';
part 'category_form_bloc.freezed.dart';

@injectable
class CategoryFormBloc extends Bloc<CategoryFormEvent, CategoryFormState> {

  final ICategoryRepository categoryRepository;

  CategoryFormBloc(this.categoryRepository) : super(CategoryFormState.initial()) {
    on<CategoryFormEvent>(
      (event, emit) => event.map(
        initialized: (event) =>
          emit(state.copyWith(category: event.initialCategory, isEditing: true),),
        nameChanged: (event) =>
          emit(state.copyWith(category: state.category.copyWith(name: event.nameStr),),),
        saved: (event) async {
          CategoryResult categoryResult;
          emit(state.copyWith(isSaving: true));
          categoryResult = state.isEditing
            ? await categoryRepository.update(state.category)
            : await categoryRepository.create(state.category);
          emit(state.copyWith(
            isSaving: false,
            categoryFailure: categoryResult.whenOrNull(failure: (f) => f),
            savedSuccessfully: categoryResult.whenOrNull(success: (_) => true),
          ),);
        },
      ),
      transformer: sequential(),
    );
  }
}
