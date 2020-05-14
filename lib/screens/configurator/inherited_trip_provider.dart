import 'package:flutter/material.dart';
import 'package:travel_list/models/trip.dart';

/// makes possible update trip through all the steps of ConfiguratorStepper
class InheritedTripProvider extends InheritedWidget {
  final Trip trip;

  const InheritedTripProvider({
    Widget child,
    this.trip
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedTripProvider oldWidget) =>
    trip != oldWidget.trip;

  static InheritedTripProvider of(BuildContext context) =>
    context.dependOnInheritedWidgetOfExactType<InheritedTripProvider>();
}