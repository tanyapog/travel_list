import 'package:flutter/material.dart';
import 'package:travel_list/screens/generator/generator_screen.dart';
import 'package:travel_list/shared/routing_constants.dart';
import 'package:travel_list/screens/trip/trips_screen.dart';
import 'package:travel_list/screens/trip_edit/trip_edit_screen.dart';
import 'package:travel_list/screens/luggage_list/luggage_list_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RootRoute:
      return MaterialPageRoute(
          builder: (context) {return TripsScreen();}
      );
    case LuggageListRoute:
      return MaterialPageRoute(
          builder: (context) {return LuggageListScreen(trip: settings.arguments,);}
      );
    case TripEditRoute:
      return MaterialPageRoute(
          builder: (context) {return TripEditScreen(trip: settings.arguments,);}
      );
    case GeneratorRoute:
      return MaterialPageRoute(
          builder: (context) {return GeneratorScreen();}
      );
    default:
      return null;
  }
}