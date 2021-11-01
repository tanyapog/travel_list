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

  TripFormBloc(this._tripRepository) : super(TripFormState.initial());

  @override
  Stream<TripFormState> mapEventToState(TripFormEvent event) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialTripOption.fold(
          () => state, // case of none we should not change current state
          (initialTrip) => state.copyWith(trip: initialTrip, isEditing: true),
         );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          trip: state.trip.copyWith(name: TripName(e.nameStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      descriptionChanged: (e) async* {
        yield state.copyWith(
          trip: state.trip.copyWith(description: TripDescription(e.descriptionStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      completedPressed: (e) async* {
        yield state.copyWith(
          trip: state.trip.copyWith(complete: !state.trip.complete),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<TripFailure, Unit> failureOrSuccess;
        bool showErrorMessages = true;
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );
        if (state.trip.failureOption.isNone()) {
          showErrorMessages = false;
          failureOrSuccess = state.isEditing
            ? await _tripRepository.update(state.trip)
            : await _tripRepository.create(state.trip);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: showErrorMessages,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
