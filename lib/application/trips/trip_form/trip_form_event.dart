part of 'trip_form_bloc.dart';

@freezed
class TripFormEvent with _$TripFormEvent {
  const factory TripFormEvent.initialized(Option<Trip> initialTripOption) = _Initialized;
  const factory TripFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory TripFormEvent.descriptionChanged(String descriptionStr) = _DescriptionChanged;
  const factory TripFormEvent.completedPressed() = _CompletedPressed;
  const factory TripFormEvent.saved() = _Saved;
}
