import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/application/travel_list_bloc_observer.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod, const SimpleEnvironmentFilter());
  await Firebase.initializeApp();
  Bloc.observer = TravelListBlocObserver();
  runApp(AppWidget());
}
