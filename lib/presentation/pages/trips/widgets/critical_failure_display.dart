import 'package:flutter/material.dart';
import 'package:travel_list/domain/trips/trip_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final TripFailure failure;

  const CriticalFailureDisplay({Key? key, required this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(Icons.report_problem, size: 76.0, color: Colors.red),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              failure.message,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
