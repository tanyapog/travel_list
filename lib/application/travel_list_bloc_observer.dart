import 'package:flutter_bloc/flutter_bloc.dart';

// TODO use in develop mod only
class TravelListBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    print('------ Create\t\t ${bloc.runtimeType}');
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    print('------ Close\t ${bloc.runtimeType}');
    super.onClose(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('------ Error\t\t\t ${bloc.runtimeType} $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }

  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   print('------ Transition\t ${bloc.runtimeType} $transition');
  //   super.onTransition(bloc, transition);
  // }

  @override
  void onChange(BlocBase bloc, Change change) {
    print('------ Change\t\t ${bloc.runtimeType} $change');
    super.onChange(bloc, change);
  }

// @override
// void onEvent(Bloc bloc, Object event) {
//   print('------ Event\t\t\t ${bloc.runtimeType} $event');
//   super.onEvent(bloc, event);
// }
}
