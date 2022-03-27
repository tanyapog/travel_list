import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'nav_event.dart';
part 'nav_state.dart';
part 'nav_bloc.freezed.dart';

@injectable
class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(NavState.initial()){
    on<NavEvent>(
      (event, emit) => event.map(
        navigateTo: (event) =>
          emit(NavState.selectItem(selectedItem: event.destination)),
      ),
      transformer: sequential(),
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
