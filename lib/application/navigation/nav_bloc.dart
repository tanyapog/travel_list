import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'nav_event.dart';
part 'nav_state.dart';
part 'nav_bloc.freezed.dart';

@injectable
class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(NavState.initial());

  @override
  Stream<NavState> mapEventToState(NavEvent event) async* {
    yield* event.map(
      navigateTo: (e) async* {
        yield NavState.selectItem(selectedItem: e.destination);
      },
    );
  }
}

enum NavItem {
  currentTrip,
  newTrip,
  trips,
  catalog,
  categories,
  templates,
  settings,
  signOut,
}
