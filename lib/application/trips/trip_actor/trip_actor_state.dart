part of 'trip_actor_bloc.dart';

@freezed
class TripActorState with _$TripActorState {
  const factory TripActorState.initial() = _Initial;
  const factory TripActorState.actionInProgress() = _ActionInProgress;
  const factory TripActorState.deleteFailure(TripFailure tripFailure) = _DeleteFailure;
  const factory TripActorState.deleteSuccess() = _DeleteSuccess;
}

