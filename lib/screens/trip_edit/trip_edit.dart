import 'package:flutter/material.dart';
import 'package:travel_list/shared/db_imitation.dart';
import 'package:travel_list/screens/trip/trip.dart';

class TripEditScreen extends StatefulWidget {
  final Trip trip;
  const TripEditScreen({Key key, this.trip}) : super(key: key);
  @override
  _TripEditState createState() => _TripEditState();
}

class _TripEditState extends State<TripEditScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
          appBar: AppBar(
            title: Text('new trip 1'),
          ),
          body: Container (
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please, give trip a name";
                    } else return null;
                  },
                  onSaved: (value) {
                    widget.trip.name = value;
                  },
                ),
                RaisedButton(
                  child: Text('Save'),
                  onPressed: () {
                    _saveTrip(context);
                  },
                )
              ],
            ),
          )
      )
    );
  }

  void _saveTrip(BuildContext context) {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      DbImitation.trips.add(widget.trip);
      Navigator.of(context).pop();
    }
  }
}
