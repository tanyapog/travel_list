import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// TODO use in develop mod only
class TravelListBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    debugPrint('------ Create\t\t ${bloc.runtimeType}');
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('------ Close\t ${bloc.runtimeType}');
    super.onClose(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('------ Error\t\t\t ${bloc.runtimeType} $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }

  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   debugPrint('------ Transition\t ${bloc.runtimeType} $transition');
  //   super.onTransition(bloc, transition);
  // }

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('------ Change\t\t ${bloc.runtimeType} $change');
    super.onChange(bloc, change);
  }

// @override
// void onEvent(Bloc bloc, Object event) {
//   debugPrint('------ Event\t\t\t ${bloc.runtimeType} $event');
//   super.onEvent(bloc, event);
// }
}
