import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/trips/trip_actor/trip_actor_bloc.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_buttons.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_flushbar_helper.dart';
import 'package:travel_list/presentation/core/custom_widgets/dialog_box_decoration.dart';

class TripDeletionDialog extends StatelessWidget {
  final Trip trip;

  const TripDeletionDialog({Key? key, required this.trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TripActorBloc>(
      create: (context) => getIt<TripActorBloc>(),
      child: customDialog(
        child: BlocListener<TripActorBloc, TripActorState>(
          listener: (context, state) {
            state.maybeMap(
              deleteFailure: (state) => customErrorFlushbar(
                message: state.tripFailure.message,).show(context),
              orElse: () {},
            );
          },
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              const Text("Deleting a trip",
                style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 10),
              ListTile(
                title: Text(trip.name.getOrCrash()),
                subtitle: Text('${trip.description.getOrCrash()} \nдек. 2020'),
                isThreeLine: true,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  greyButton(
                    onPressed: () => Navigator.of(context).pop(),
                    title: "CANCEL",),
                  const SizedBox(width: 10),
                  BlocBuilder<TripActorBloc, TripActorState>(
                    builder: (context, state) => amberButton(
                      onPressed: () {
                        context.read<TripActorBloc>().add(TripActorEvent.deleted(trip));
                        Navigator.of(context).pop();
                      },
                      title: "DELETE",),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
