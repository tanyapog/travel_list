part of 'trip_form_bloc.dart';

@freezed
class TripFormState with _$TripFormState {
  const factory TripFormState({
    required Trip trip,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<TripFailure, Unit>> saveFailureOrSuccessOption,
  }) = _TripFormState;

  factory TripFormState.initial() => TripFormState(
    trip: Trip.empty(),
    showErrorMessages: false,
    isEditing: false,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
  );
}
