import 'package:flutter_bloc/flutter_bloc.dart';

// TODO use in develop mod only
class TravelListBlocObserver extends BlocObserver {
  // @override
  // void onEvent(Bloc bloc, Object event) {
  //   print('------ ${bloc.runtimeType} $event');
  //   super.onEvent(bloc, event);
  // }
  //
  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   print('------ ${bloc.runtimeType} $transition');
  //   super.onTransition(bloc, transition);
  // }

  @override
  void onChange(Cubit cubit, Change change) {
    print('------ ${cubit.runtimeType} $change');
    super.onChange(cubit, change);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    print('------ ${cubit.runtimeType} $error $stackTrace');
    super.onError(cubit, error, stackTrace);
  }
}