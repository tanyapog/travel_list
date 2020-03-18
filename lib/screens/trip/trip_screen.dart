import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../trip/trip.dart';

class TripScreen extends StatefulWidget {
  final Trip trip;
  const TripScreen({Key key, this.trip}) : super(key: key);
  @override
  _TripScreenState createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {

  @override
  Widget build(BuildContext context) {

    Widget name = TextField(
      decoration: InputDecoration(
        labelText: widget.trip.isNew() ?  "trip name" : widget.trip.name,
      ),
    );

    Widget description = TextField(
      decoration: InputDecoration(
        labelText: widget.trip.isNew() ? "trip description" : widget.trip.description,
      ),
      keyboardType: TextInputType.multiline,
      maxLines: 4,
    );

    return Scaffold(
        appBar: AppBar(
          title: Text('new trip 1'),
        ),
        body: Container (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              name,
              description,
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