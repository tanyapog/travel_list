import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/presentation/core/app_widget.dart';
import 'application/travel_list_bloc_observer.dart';
import 'firebase_options.dart';
import 'global.dart';
import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  configureInjection(Environment.prod);
  if (useFirebaseEmulator) {
    await connectToEmulator();
  }
  Bloc.observer = TravelListBlocObserver();
  runApp(AppWidget());
}
