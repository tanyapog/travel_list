import 'package:flutter/material.dart';
import 'package:travel_list/screens/trip/trip.dart';
import 'package:travel_list/screens/trip/trip_screen.dart';
import 'package:travel_list/shared/routing_constants.dart';

void main() => runApp(TravelList());

class TravelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel List',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
      onGenerateRoute: (settings) {
        if(settings.name == TripRoute) {
          return MaterialPageRoute(
              builder: (context) => TripScreen(trip: new Trip(),),
          );
        }
        return null;
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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