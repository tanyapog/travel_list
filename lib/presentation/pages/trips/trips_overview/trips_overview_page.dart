import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/trips/trip_actor/trip_actor_bloc.dart';
import 'package:travel_list/application/trips/trip_watcher/trip_watcher_bloc.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/pages/navigation/navigation_drawer.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/widgets/trips_overview_body.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/widgets/uncompleted_switch.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

class TripsOverviewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TripWatcherBloc>(
          create: (context) =>
          getIt<TripWatcherBloc>()
            ..add(const TripWatcherEvent.watchAllStarted()),),
        BlocProvider<TripActorBloc>(
          create: (context) => getIt<TripActorBloc>(),),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<TripActorBloc, TripActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: state.tripFailure.map(
                      unexpected: (_) => 'Unexpected error occurred while deleting, pleas contact support',
                      insufficientPermission: (_) => 'Insufficient permissions',
                      unableToUpdate: (_) => 'Impossible error',
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          drawer: NavigationDrawer(),
          appBar: AppBar(
            title: const Text('My trips'),
            actions: <Widget>[
              UncompletedSwitch(),
            ],
          ),
          body: TripsOverviewBody(),
          floatingActionButton: FloatingActionButton(onPressed: () {
            ExtendedNavigator.of(context).pushTripFormPage(trip: null);
          },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}