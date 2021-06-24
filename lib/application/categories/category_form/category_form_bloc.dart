import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
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

  CategoryFormBloc(this.categoryRepository) : super(CategoryFormState.initial());

  @override
  Stream<CategoryFormState> mapEventToState(CategoryFormEvent event) async* {
    yield* event.map(
      initialized: (e) async* {
        if (e.initialCategory != null) {
          yield state.copyWith(category: e.initialCategory, isEditing: true);
        } else {
          yield state;
        }
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          category: state.category.copyWith(name: e.nameStr),
        );
      },
      saved: (e) async* {
        CategoryResult categoryResult;
        yield state.copyWith(isSaving: true);
        categoryResult = state.isEditing
          ? await categoryRepository.update(state.category)
          : await categoryRepository.create(state.category);
        yield state.copyWith(
          isSaving: false,
          categoryFailure: categoryResult?.maybeWhen(
            failure: (failure) => failure,
            orElse: () => null,
          ),
          savedSuccessfully: categoryResult?.maybeWhen(
            success: (_, __) => true,
            orElse: () => null,
          ),
        );
      },
    );
  }
}
