import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../trip/trip.dart';

class TravelListScreen extends StatefulWidget {
  final Trip trip;
  const TravelListScreen({Key key, this.trip}) : super(key: key);
  @override
  _TravelListScreenState createState() => _TravelListScreenState();
}

class _TravelListScreenState extends State<TravelListScreen> {

  @override
  Widget build(BuildContext context) {
    Trip _trip = widget.trip;
    return Scaffold(
        appBar: AppBar(
          title: Text('${_trip.name}'),
        ),
        body: Container (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Travel list for ${_trip.name}'),
            ],
          ),
        )
    );
  }

  @override
  void initState() {
    super.initState();
  }
}