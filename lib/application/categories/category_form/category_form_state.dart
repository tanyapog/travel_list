part of 'category_form_bloc.dart';

@freezed
abstract class CategoryFormState with _$CategoryFormState {

  const factory CategoryFormState({
    @required Category category,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    CategoryFailure categoryFailure,
  }) = _CategoryFormState;

  factory CategoryFormState.initial() => CategoryFormState(
      category: Category.empty(),
      showErrorMessages: false,
      isEditing: false,
      isSaving: false,
  );
}



