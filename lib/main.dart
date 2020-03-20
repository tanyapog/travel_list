import 'package:flutter/material.dart';
import 'package:travel_list/screens/trip/travel_list_screen.dart';
import 'package:travel_list/screens/home_page/home_page.dart';
import 'package:travel_list/screens/trip_edit/trip_edit.dart';
import 'package:travel_list/shared/routing_constants.dart';

void main() => runApp(TravelListApp());

class TravelListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel List',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Navigator(
        onGenerateRoute: (settings) {
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
        },
        initialRoute: RootRoute,
      )
    );
  }
}