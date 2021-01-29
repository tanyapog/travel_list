import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/trips/trip_form/trip_form_bloc.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

class TripFormPage extends StatelessWidget {
  final Trip trip;

  const TripFormPage({Key key, @required this.trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TripFormBloc>()
        ..add(TripFormEvent.initialized(optionOf(trip))),
      child: BlocConsumer<TripFormBloc, TripFormState>(
        listenWhen: (previous, current) =>
          previous.saveFailureOrSuccessOption != current.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {}, // case of none
            (either) => either.fold(
              (failure) { // loading trip is failed
                FlushbarHelper.createError(message: failure.map(
                  unexpected: (_) => 'Unexpected error occured',
                  insufficientPermission: (_) => 'Insufficient Permission',
                  unableToUpdate:  (_) => 'Unable to update trip. Was it deleted from another device?',
                ),).show(context);
              },
              (_) { // loading trip succeed, show the trip form
                // todo show trips_overview_page if trip was edited and generator if a new trip was created
                context.bloc<TripFormBloc>().add(const TripFormEvent.saved());
                // current route is fullscreenDialog with his oun route so just one pop is not enough
                ExtendedNavigator.of(context).popUntil(
                  (route) => route.settings.name == Routes.tripsOverviewPage,
                );
              }
            )
          );
        },
        buildWhen: (previous, current) => previous.isSaving != current.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const TripFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class TripFormPageScaffold extends StatelessWidget {
  const TripFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<TripFormBloc, TripFormState>(
          buildWhen: (previous, current) => previous.isEditing != current.isEditing,
          builder: (context, state) => Text(state.isEditing
              ? 'Edit a trip'
              : 'Create a trip'
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              context.bloc<TripFormBloc>().add(const TripFormEvent.saved());
            },
          )
        ],
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({
    Key key, @required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8,),
              Text(
                'Saving',
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
