import 'package:flutter/material.dart';
import 'package:travel_list/screens/configurator/inherited_trip_provider.dart';
import 'package:travel_list/screens/configurator/configurator_stepper.dart';
import 'package:travel_list/models/trip.dart';
import 'items_source.dart';

class ConfiguratorWrapper extends StatefulWidget {
  final Trip trip ;

  const ConfiguratorWrapper({Key key, this.trip}) : super(key: key);

  @override
  _ConfiguratorWrapperState createState() => _ConfiguratorWrapperState();
}

class _ConfiguratorWrapperState extends State<ConfiguratorWrapper> {
  List<Widget> steps;

  @override
  Widget build(BuildContext context) {
    return InheritedTripProvider(
      trip: widget.trip,
      child: ConfigurationStepper(steps),
    );
  }

  @override
  void initState() {
    super.initState();
    final List<String> stepTitles = [
      'New Trip',
      '${widget.trip.name}: ${itemsSources[ItemsSource.generator].secondStepTitle}',
      '${widget.trip.name}: Fitting items'];

    steps = stepTitles.map((title) =>
      AppBar(
        title: Text(title),
        automaticallyImplyLeading: false, // appbar without back button
      )).toList();
  }
}
