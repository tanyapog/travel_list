import 'package:flutter/material.dart';
import 'package:travel_list/domain/trips/trip.dart';

class TripCard extends StatelessWidget {
  final Trip trip;

  const TripCard({
    Key key,
    @required this.trip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {}, //Navigator.of(context).pushNamed(luggageListRoute, arguments: trip);},
      child: Card(
        child: ListTile(
          title: Text(trip.name.getOrCrash()),
          subtitle: Text('${trip.description.getOrCrash()} \nдек. 2020'),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        ),
      ),
    );
  }
}
