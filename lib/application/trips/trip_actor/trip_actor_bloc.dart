import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/domain/trips/i_trip_repository.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/domain/trips/trip_failure.dart';

part 'trip_actor_event.dart';
part 'trip_actor_state.dart';
part 'trip_actor_bloc.freezed.dart';

@injectable
class TripActorBloc extends Bloc<TripActorEvent, TripActorState> {
  final ITripRepository _tripRepository;

  TripActorBloc(this._tripRepository) : super(const TripActorState.initial());

  @override
  Stream<TripActorState> mapEventToState(TripActorEvent event) async* {
    yield const TripActorState.actionInProgress();
    final possibleFailure  = await _tripRepository.delete(event.trip);
    yield possibleFailure.fold(
      (failure) => TripActorState.deleteFailure(failure),
      (_) => const TripActorState.deleteSuccess(),
    );
  }
}
