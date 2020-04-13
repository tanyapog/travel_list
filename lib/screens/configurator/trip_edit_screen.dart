import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/rendering.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRangePicker;
import 'package:travel_list/screens/configurator/Inherited_trip_provider.dart';
import 'package:travel_list/models/trip.dart';

class TripEditScreen extends StatefulWidget {
  @override
  _TripEditScreenState createState() => _TripEditScreenState();
}

class _TripEditScreenState extends State<TripEditScreen> {
  @override
  Widget build(BuildContext context) {
    Trip trip = InheritedTripProvider.of(context).trip;
    return Flexible (
      child: Container (
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _tripNameField(trip),
            _tripDates(trip),
          ],
        ),
      )
    );
  }

  TextFormField _tripNameField(Trip trip) {
    return TextFormField(
      autofocus: true,
      validator: (value) {
        if (value.isEmpty) {
          return "Please, give trip a name";
        } else return null;
      },
      onSaved: (value) {
        trip.name = value;
      },
    );
  }

  final TextEditingController _rangeController = new TextEditingController();
  final format = DateFormat("yyyy-MM-dd"); // todo more redable format
  List<DateTime> _picked;
  TextFormField _tripDates(Trip trip) {
    return TextFormField(
      controller: _rangeController,
      onTap: () async {
        FocusScope.of(context).requestFocus(new FocusNode());
        _picked = await DateRangePicker.showDatePicker(
            context: context,
            initialFirstDate: new DateTime.now(),
            initialLastDate: (new DateTime.now()).add(new Duration(days: 7)),
            firstDate: new DateTime(2015),
            lastDate: new DateTime(2040)
        );
        if (_picked != null && _picked.length == 2) {
          _rangeController.text = '${format.format(_picked[0])} - ${format.format(_picked[1])}';
        }
      },
      onSaved: (value) {
        if (_picked != null) {
          trip.start = _picked[0];
          trip.end = _picked[1];
        }
      },
    );
  }
}
