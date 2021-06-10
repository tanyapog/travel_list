import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:travel_list/application/trips/trip_actor/trip_actor_bloc.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

class TripCard extends StatelessWidget {
  final Trip trip;

  const TripCard({Key key, @required this.trip,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ExtendedNavigator.of(context).pushTripFormPage(trip: trip),
      child: Slidable(
        actionPane: const SlidableDrawerActionPane(),
        secondaryActions: [
          IconSlideAction(
            caption: 'Delete',
            icon: Icons.delete,
            color: Colors.red,
            onTap: () => _showDeletionDialog(context),
          )
        ],
        child: Card(
          child: ListTile(
            title: Text(trip.name.getOrCrash()),
            subtitle: Text('${trip.description.getOrCrash()} \nдек. 2020'),
            trailing: const Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(BuildContext context) =>
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Selected trip'),
          content: Text(trip.name.getOrCrash()),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(dialogContext).pop(), // Dismiss alert dialog
              child: const Text('CANCEL'),
            ),
            FlatButton(
              onPressed: () {
                context.read<TripActorBloc>().add(TripActorEvent.deleted(trip));
                Navigator.of(dialogContext).pop();
              },
              child: const Text('DELETE'),
            ),
          ],
        );
      },
    );
}