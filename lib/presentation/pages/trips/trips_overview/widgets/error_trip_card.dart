import 'package:flutter/material.dart';
import 'package:travel_list/domain/trips/trip.dart';

class ErrorTripCard extends StatelessWidget {
  final Trip trip;

  const ErrorTripCard({Key? key, required this.trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: ListTileTheme(
        textColor: Colors.white70,
        child: ListTile(
          title: const Text('Invalid trip, please contact support',),
          subtitle: Text(trip.failureOption.fold(() => '', (failure) => failure.toString())),
        ),
      ),
    );
  }
}
