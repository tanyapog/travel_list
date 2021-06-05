import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/trips/trip_watcher/trip_watcher_bloc.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/widgets/trip_card.dart';
import 'critical_failure_display.dart';
import 'error_trip_card.dart';

class TripsOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TripWatcherBloc, TripWatcherState>(
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => const Center(child: CircularProgressIndicator()),
        loadSuccess: (state) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final trip = state.trips[index];
              if (trip.failureOption.isSome()) {
                return ErrorTripCard(trip: trip,);
              } else {
                return TripCard(trip: trip,);
              }
            },
            itemCount: state.trips.length,
          );
        },
        loadFailure: (state) => CriticalFailureDisplay(failure: state.tripFailure,),
      ),
    );
  }
}
