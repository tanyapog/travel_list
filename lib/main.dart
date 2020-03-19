import 'package:flutter/material.dart';
import 'package:travel_list/screens/trip/trip.dart';
import 'package:travel_list/screens/trip/travel_list_screen.dart';
import 'package:travel_list/screens/home_page/home_page.dart';
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
      home: HomePage(),
      onGenerateRoute: (settings) {
        if(settings.name == TripRoute) {
          return MaterialPageRoute(
              builder: (context) => TravelListScreen(trip: Trip(),),
          );
        }
        return null;
      },
    );
  }
}