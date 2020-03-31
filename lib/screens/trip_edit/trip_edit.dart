import 'package:flutter/material.dart';
import 'package:travel_list/shared/db_imitation.dart';
import 'package:travel_list/screens/trip/trip.dart';

class TripEditScreen extends StatefulWidget {
  final Trip trip;
  const TripEditScreen({Key key, this.trip}) : super(key: key);
  @override
  _TripEditState createState() => _TripEditState();
}

enum ItemsSource {generator, template, duplicatePreviosTrip, selectFromCatalog}

class _TripEditState extends State<TripEditScreen> {
  final _formKey = GlobalKey<FormState>();
  ItemsSource _itemsSource = ItemsSource.generator;
  var _itemsSourceLabels = {
    ItemsSource.generator:'Generator',
    ItemsSource.template:'Template',
    ItemsSource.duplicatePreviosTrip:'Duplicate one of the previos trips',
    ItemsSource.selectFromCatalog:'Select from catalog'};
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
                _tripNameField(),
                _itemSourceRadio(),
                _saveButton(context),
              ],
            ),
          )
      )
    );
  }

  TextFormField _tripNameField() {
    return TextFormField(
      autofocus: true,
      validator: (value) {
        if (value.isEmpty) {
          return "Please, give trip a name";
        } else return null;
      },
      onSaved: (value) {
        widget.trip.name = value;
      },
    );
  }

  Expanded _itemSourceRadio() {
    return Expanded (
      child: ListView.builder(
        itemCount: _itemsSourceLabels.length,
        itemBuilder: (BuildContext context, int i) {
          ItemsSource itemsSource = _itemsSourceLabels.keys.elementAt(i);
          return RadioListTile<ItemsSource>(
            title: Text('${_itemsSourceLabels[itemsSource]}'),
            value: itemsSource,
            groupValue: _itemsSource,
            onChanged: (ItemsSource value) {
              setState(() { _itemsSource = value; });
            },
          );
        }
      ),
    );
  }

  RaisedButton _saveButton(BuildContext context) {
    return RaisedButton(
      child: Text('Save'),
      onPressed: () {
        _saveTrip(context);
      },
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
