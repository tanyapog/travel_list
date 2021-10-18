part of 'category_form_bloc.dart';

@freezed
class CategoryFormState with _$CategoryFormState {

  const factory CategoryFormState({
    @required Category category,
    @required bool isEditing, // is this editing an existing category or creating a new one
    @required bool isSaving,
    CategoryFailure categoryFailure,
    bool savedSuccessfully,
  }) = _CategoryFormState;

  factory CategoryFormState.initial() => CategoryFormState(
      category: Category.empty(),
      isEditing: false,
      isSaving: false,
  );
}



