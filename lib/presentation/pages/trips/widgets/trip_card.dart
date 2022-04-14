import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_delete_slide_action.dart';
import 'package:travel_list/presentation/pages/trips/widgets/trip_deletion_dialog.dart';
import 'package:travel_list/presentation/pages/trips/widgets/trip_editing_dialog.dart';

class TripCard extends StatelessWidget {
  final Trip trip;

  const TripCard({Key? key, required this.trip,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => TripEditingDialog(trip: trip),
      ),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const DrawerMotion(),
          children: [
            customDeleteSlideAction(
              onPressed: (context) => showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => TripDeletionDialog(trip: trip,),
              ),
            ),
          ],
        ),
        child: Card(
          child: ListTile(
            title: Text(trip.name.getOrCrash(), key: const Key('TripName')),
            subtitle: Text('${trip.description.getOrCrash()} \nдек. 2020', key: const Key('TripDescription')),
            trailing: const Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
      ),
    );
  }
}
