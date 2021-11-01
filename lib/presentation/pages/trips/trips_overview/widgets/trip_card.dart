import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_delete_slide_action.dart';
import 'package:travel_list/presentation/pages/trips/trip_form/widgets/trip_deletion_dialog.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

class TripCard extends StatelessWidget {
  final Trip trip;

  const TripCard({Key? key, required this.trip,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ExtendedNavigator.of(context).pushTripFormPage(trip: trip),
      child: Slidable(
        actionPane: const SlidableDrawerActionPane(),
        secondaryActions: [
          customDeleteSlideAction(
            onTap: () => showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) => TripDeletionDialog(trip: trip,),
            ),
          ),
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
}
