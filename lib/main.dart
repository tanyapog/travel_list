import 'package:flutter/material.dart';
import 'package:travel_list/screens/trip/trip.dart';
import 'package:travel_list/screens/trip/travel_list_screen.dart';
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
              builder: (context) => TravelListScreen(trip: new Trip(),),
          );
        }
        return null;
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Travel List'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Create list for my next travel'),
            onPressed: () {
              Navigator.pushNamed(context, TripRoute);
            },
          ),
        )
    );
  }
}