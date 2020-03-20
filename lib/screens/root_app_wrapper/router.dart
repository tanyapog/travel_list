import 'package:flutter/material.dart';
import 'package:travel_list/shared/routing_constants.dart';
import 'package:travel_list/screens/home_page/home_page.dart';
import 'package:travel_list/screens/trip_edit/trip_edit.dart';
import 'package:travel_list/screens/trip/travel_list_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RootRoute:
      return MaterialPageRoute(
          builder: (context) {return HomePage();}
      );
    case TripRoute:
      return MaterialPageRoute(
          builder: (context) {return TravelListScreen(trip: settings.arguments,);}
      );
    case TripEditRoute:
      return MaterialPageRoute(
          builder: (context) {return TripEditScreen(trip: settings.arguments,);}
      );
    default:
      return null;
  }
}