import 'package:flutter_bloc/flutter_bloc.dart';

// TODO use in develop mod only
class TravelListBlocObserver extends BlocObserver {
  // @override
  // void onEvent(Bloc bloc, Object event) {
  //   print('------ Event\t\t\t ${bloc.runtimeType} $event');
  //   super.onEvent(bloc, event);
  // }
  //
  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   print('------ Transition\t ${bloc.runtimeType} $transition');
  //   super.onTransition(bloc, transition);
  // }

  @override
  void onChange(Cubit cubit, Change change) {
    print('------ Change\t\t ${cubit.runtimeType} $change');
    super.onChange(cubit, change);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    print('------ Error\t\t\t ${cubit.runtimeType} $error $stackTrace');
    super.onError(cubit, error, stackTrace);
  }

  @override
  void onCreate(Cubit cubit) {
    print('------ Create\t\t ${cubit.runtimeType}');
    super.onCreate(cubit);
  }

  @override
  void onClose(Cubit cubit) {
    print('------ Close\t ${cubit.runtimeType}');
    super.onClose(cubit);
  }
}