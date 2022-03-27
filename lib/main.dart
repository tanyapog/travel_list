import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/application/travel_list_bloc_observer.dart';
import 'package:travel_list/global.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod, NoEnvOrContains(Environment.prod),);
  await Firebase.initializeApp();
  if (useFirebaseEmulator) {
    await connectToEmulator();
  }
  BlocOverrides.runZoned(() {}, blocObserver: TravelListBlocObserver(),);
  runApp(AppWidget());
}
