part of 'category_form_bloc.dart';

@freezed
class CategoryFormEvent with _$CategoryFormEvent {
  const factory CategoryFormEvent.initialized(Category initialCategory) = _Initialized;
  const factory CategoryFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory CategoryFormEvent.saved() = _Saved;
}
