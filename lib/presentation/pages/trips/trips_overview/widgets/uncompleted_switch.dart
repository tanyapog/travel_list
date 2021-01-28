import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:travel_list/application/trips/trip_watcher/trip_watcher_bloc.dart';

class UncompletedSwitch extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final toggleState = useState(false);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkResponse(
        onTap: () {
          toggleState.value = !toggleState.value;
          context.bloc<TripWatcherBloc>().add(toggleState.value
              ? const TripWatcherEvent.watchUncompletedStarted()
              : const TripWatcherEvent.watchAllStarted(),
          );
        },
        child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 100),
            transitionBuilder: (child, animation) => ScaleTransition(
              scale: animation,
              child: child,),
            child: toggleState.value
            // without keys flutter thinks that icons are identical and animation doesn't work
                ? Icon(Icons.check_box_outline_blank, key: const Key('outline'),)
                : Icon(Icons.indeterminate_check_box, key: const Key('indeterminate'))
        ),
      ),
    );
  }
}
