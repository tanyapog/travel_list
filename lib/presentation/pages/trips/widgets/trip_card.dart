import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/global/tl_date_formats.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_delete_slide_action.dart';
import 'package:travel_list/presentation/pages/trips/widgets/trip_deleting_dialog.dart';
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
                builder: (context) => TripDeletingDialog(trip: trip,),
              ),
            ),
          ],
        ),
        child: Card(
          child: ListTile(
            title: Text(trip.name.getOrCrash(), key: const Key('TripName')),
            subtitle: Text(buildDescription(), key: const Key('TripDescription')),
            trailing: const Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
      ),
    );
  }

  String buildDateInfoStr(DateTime? start, DateTime? end) =>
    (start != null && end != null)
      ? (start.year == end.year)
        ? (start.month == end.month)
          ? '${start.fd()} - ${end.fdMMMy()}'
          : '${start.fdMMM()} - ${end.fdMMMy()}'
        : '${start.fdMMMy()} - ${end.fdMMMy()}'
      : (start != null && end == null )
        ? start.fdMMMy()
        : '';
  
  String buildDescription() {
    final tripDatesInfo = buildDateInfoStr(trip.dateStart, trip.dateEnd);
    return (tripDatesInfo.isNotEmpty)
      ? '$tripDatesInfo\n${trip.description.getOrCrash()}'
      : trip.description.getOrCrash();
  }
}
