import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../luggage_list/trip.dart';

class LuggageListScreen extends StatefulWidget {
  final Trip trip;
  const LuggageListScreen({Key key, this.trip}) : super(key: key);
  @override
  _LuggageListScreenState createState() => _LuggageListScreenState();
}

class _LuggageListScreenState extends State<LuggageListScreen> {

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