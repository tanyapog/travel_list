import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/domain/trips/i_trip_repository.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/domain/trips/trip_failure.dart';
import 'package:travel_list/domain/trips/value_objects.dart';

part 'trip_form_event.dart';
part 'trip_form_state.dart';
part 'trip_form_bloc.freezed.dart';

@injectable
class TripFormBloc extends Bloc<TripFormEvent, TripFormState> {
  final ITripRepository _tripRepository;

  TripFormBloc(this._tripRepository) : super(TripFormState.initial()) {
    on<TripFormEvent>(
      (event, emit) => event.map(
        initialized: (event) =>
          emit(event.initialTripOption.fold(
            () => state, // case of none we should not change current state
            (initialTrip) => state.copyWith(trip: initialTrip, isEditing: true),
          ),),
        nameChanged: (event) =>
          emit(state.copyWith(
            trip: state.trip.copyWith(name: TripName(event.nameStr)),
            saveFailureOrSuccessOption: none(),
          ),),
        descriptionChanged: (event) =>
          emit(state.copyWith(
            trip: state.trip.copyWith(description: TripDescription(event.descriptionStr)),
            saveFailureOrSuccessOption: none(),
          ),),
        completedPressed: (event) =>
          emit(state.copyWith(
            trip: state.trip.copyWith(complete: !state.trip.complete),
            saveFailureOrSuccessOption: none(),
          ),),
        saved: (event) async {
          Either<TripFailure, Unit>? failureOrSuccess;
          bool showErrorMessages = true;
          emit(state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ),);
          if (state.trip.failureOption.isNone()) {
            showErrorMessages = false;
            failureOrSuccess = state.isEditing
              ? await _tripRepository.update(state.trip)
              : await _tripRepository.create(state.trip);
          }
          emit(state.copyWith(
            isSaving: false,
            showErrorMessages: showErrorMessages,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),);
       },
      ),
      transformer: sequential(),
    );
  }
}
