part of 'trip_actor_bloc.dart';

@freezed
class TripActorEvent with _$TripActorEvent{
  const factory TripActorEvent.deleted(Trip trip) = _Deleted;
}
