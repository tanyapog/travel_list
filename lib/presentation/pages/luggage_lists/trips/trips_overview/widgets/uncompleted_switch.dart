import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/trips/trip_watcher/trip_watcher_bloc.dart';

class UncompletedSwitch extends StatefulWidget {
  @override
  _UncompletedSwitchState createState() => _UncompletedSwitchState();
}

class _UncompletedSwitchState extends State<UncompletedSwitch> {
  bool toggle = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Checkbox(
        checkColor: Colors.grey,
        activeColor: Colors.white70,
        value: toggle,
        onChanged: (bool value) {
          setState(() {
            context.bloc<TripWatcherBloc>().add(toggle
              ? const TripWatcherEvent.watchAllStarted()
              : const TripWatcherEvent.watchUncompletedStarted()
            );
            toggle = value;
          });
        },
      ),
    );
  }
}
