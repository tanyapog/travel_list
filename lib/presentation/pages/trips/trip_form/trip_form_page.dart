import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/trips/trip_form/trip_form_bloc.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_flushbar_helper.dart';
import 'package:travel_list/presentation/core/custom_widgets/saving_in_progress_overlay.dart';
import 'package:travel_list/presentation/pages/trips/trip_form/widgets/trip_form_body.dart';
import 'package:travel_list/presentation/routes/router.gr.dart' as app_router;

class TripFormPage extends StatelessWidget {
  final Trip? trip;

  const TripFormPage({Key? key, required this.trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TripFormBloc>()
        ..add(TripFormEvent.initialized(optionOf(trip))),
      child: BlocConsumer<TripFormBloc, TripFormState>(
        listenWhen: (previous, current) =>
          previous.saveFailureOrSuccessOption != current.saveFailureOrSuccessOption,
        listener: (context, state) =>
          state.saveFailureOrSuccessOption.fold(
            () {}, // case of none
            (either) => either.fold(
              (failure) => customErrorFlushbar(message: failure.message).show(context),
              (_) { // loading trip succeed, show the trip form
                // todo show trips_overview_page if trip was edited and generator if a new trip was created
                context.read<TripFormBloc>().add(const TripFormEvent.saved());
                // current route is fullscreenDialog with his oun route so just one pop is not enough
                AutoRouter.of(context).popUntil((route) =>
                  route.settings.name == app_router.TripsOverviewRoute.name,);
              }
            ),
          ),
        buildWhen: (previous, current) => previous.isSaving != current.isSaving,
        builder: (context, state) =>
          Stack(
            children: <Widget>[
              const TripFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          ),
      ),
    );
  }
}

class TripFormPageScaffold extends StatelessWidget {
  const TripFormPageScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _globalTripFormKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<TripFormBloc, TripFormState>(
          buildWhen: (previous, current) => previous.isEditing != current.isEditing,
          builder: (context, state) => Text(state.isEditing
            ? 'Edit a trip'
            : 'Create a trip',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              context.read<TripFormBloc>().add(const TripFormEvent.saved());
              _globalTripFormKey.currentState?.validate();
            },
          )
        ],
      ),
      body: BlocBuilder<TripFormBloc, TripFormState>(
        buildWhen: (previous, current) => previous.showErrorMessages != current.showErrorMessages,
        builder: (context, state) =>
          Form(
           key: _globalTripFormKey,
           child: const TripFormBody(),
         ),
      ),
    );
  }
}
