part of 'trip_form_bloc.dart';

@freezed
class TripFormEvent with _$TripFormEvent {
  const factory TripFormEvent.initialized(Option<Trip> initialTripOption) = _Initialized;
  const factory TripFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory TripFormEvent.descriptionChanged(String descriptionStr) = _DescriptionChanged;
  const factory TripFormEvent.dateStartChanged(DateTime dateStart) = _DateStartChanged;
  const factory TripFormEvent.dateEndChanged(DateTime dateEnd) = _DateEndChanged;
  const factory TripFormEvent.completedPressed() = _CompletedPressed;
  const factory TripFormEvent.saved() = _Saved;
}
