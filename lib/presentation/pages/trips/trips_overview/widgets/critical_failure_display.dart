import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_list/domain/trips/trip_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final TripFailure failure;

  const CriticalFailureDisplay({Key key, @required this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.report_problem, size: 76.0, color: Colors.red,),
          Text(
            failure.maybeMap(
              insufficientPermission: (_) => 'Insufficient permissions',
              orElse: () => 'Unexpected error. \nPlease contact support'),
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
