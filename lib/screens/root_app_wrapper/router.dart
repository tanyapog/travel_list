import 'package:flutter/material.dart';
import 'package:travel_list/presentation/pages/luggage_lists/trips/trips_overview_page.dart';
import 'package:travel_list/shared/routing_constants.dart';
import 'package:travel_list/screens/configurator/configuragor_wrapper.dart';
import 'package:travel_list/screens/generator/generator_screen.dart';
import 'package:travel_list/screens/luggage_list/luggage_list_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case rootRoute:
      return MaterialPageRoute(
          builder: (context) {return TripsOverviewPage();}
      );
    case luggageListRoute:
      return MaterialPageRoute(
          builder: (context) {return LuggageListScreen(trip: settings.arguments,);}
      );
    case configuratorRoute:
      return MaterialPageRoute(
          builder: (context) {return ConfiguratorWrapper(trip: settings.arguments,);}
      );
    case generatorRoute:
      return MaterialPageRoute(
          builder: (context) {return GeneratorScreen();}
      );
    default:
      return null;
  }
}