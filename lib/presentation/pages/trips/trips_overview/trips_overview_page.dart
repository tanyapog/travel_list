import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/trips/trip_watcher/trip_watcher_bloc.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/pages/navigation/navigation_drawer.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/widgets/trip_editing_dialog.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/widgets/trips_overview_body.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/widgets/uncompleted_switch.dart';

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
          onPressed: () => showDialog(
            barrierDismissible:  false,
            context: context,
            builder: (BuildContext context) => const TripEditingDialog(),
          ),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
