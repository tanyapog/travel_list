import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/trips/trip_watcher/trip_watcher_bloc.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/pages/navigation/navigation_drawer.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/widgets/trips_overview_body.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/widgets/uncompleted_switch.dart';
import 'package:travel_list/presentation/routes/router.gr.dart' as app_router;

class TripsOverviewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TripWatcherBloc>(
      create: (context) => getIt<TripWatcherBloc>()
        ..add(const TripWatcherEvent.watchAllStarted()),
      child: Scaffold(
        drawer: NavigationDrawer(),
        appBar: AppBar(
          title: const Text('My trips'),
          actions: <Widget>[
            UncompletedSwitch(),
          ],
        ),
        body: TripsOverviewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => AutoRouter.of(context)
            .push(app_router.TripFormRoute(trip: null)),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
