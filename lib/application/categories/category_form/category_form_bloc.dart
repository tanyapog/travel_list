import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/domain/categories/category_failure.dart';
import 'package:travel_list/domain/categories/i_category_repository.dart';

part 'category_form_event.dart';
part 'category_form_state.dart';
part 'category_form_bloc.freezed.dart';

@injectable
class CategoryFormBloc extends Bloc<CategoryFormEvent, CategoryFormState> {

  final ICategoryRepository categoryRepository;

  @override
  Stream<CategoryFormState> mapEventToState(CategoryFormEvent event) async* {
    yield* event.map(
      initialized: (e) async* {
        if (e.initialCategory != null) {
          yield state.copyWith(category: e.initialCategory, isEditing: true);
        }
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          category: state.category.copyWith(name: e.nameStr),
          categoryFailure: null,
        );
      },
      saved: (e) async* {
        yield state.copyWith(
          isSaving: true,
          categoryFailure: null,
        );
        try {
          if (state.isEditing) {
            categoryRepository.update(state.category);
          } else {
            categoryRepository.create(state.category);
          }
        } on CategoryFailure catch (e) {
          yield state.copyWith(
            isSaving: false,
            showErrorMessages: true,
            categoryFailure: null,
          );
        }
      },
    );
  }

  CategoryFormBloc(this.categoryRepository) : super(CategoryFormState.initial());
}
