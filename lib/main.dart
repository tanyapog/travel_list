import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/core/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(AppWidget());
}