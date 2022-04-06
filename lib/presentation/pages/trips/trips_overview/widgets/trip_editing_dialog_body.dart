import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:travel_list/application/trips/trip_form/trip_form_bloc.dart';
import 'package:travel_list/domain/trips/value_objects.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_buttons.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_flushbar_helper.dart';
import 'package:travel_list/presentation/core/custom_widgets/dialog_box_decoration.dart';
import 'package:travel_list/presentation/routes/router.gr.dart' as app_router;

class TripEditingDialogBody extends HookWidget {
  const TripEditingDialogBody({Key? key,}) : super(key: key);
  static final GlobalKey<FormState> _globalTripFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final nameEditingController = useTextEditingController();
    final descriptionEditingController = useTextEditingController();

    return MultiBlocListener(
      listeners: [
        BlocListener<TripFormBloc, TripFormState> (
          listenWhen: (previous, current) => previous.isEditing != current.isEditing,
          listener: (context, state) {
            nameEditingController.text = state.trip.name.getOrCrash();
            descriptionEditingController.text = state.trip.description.getOrCrash();
          },
        ),
        BlocListener<TripFormBloc, TripFormState> (
          listenWhen: (previous, current) =>
          previous.saveFailureOrSuccessOption != current.saveFailureOrSuccessOption,
          listener: (context, state) =>
          state.saveFailureOrSuccessOption.fold(
            () {}, 
            (either) => either.fold(
              (failure) => customErrorFlushbar(message: failure.message).show(context), 
              (success) => AutoRouter.of(context).popUntil((route) =>
                route.settings.name == app_router.TripsOverviewRoute.name,),),
          ),
        ),
      ],
      child: customDialog(
        child: Form(
          key: _globalTripFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              BlocBuilder<TripFormBloc, TripFormState>( // TODO check does it really reduce rebuilding count
                builder: (context, state) => Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(state.isEditing
                      ? "Edit a trip"
                      : "Create a trip",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              TextFormField( // name field
                controller: nameEditingController,
                decoration: const InputDecoration(
                  hintText: 'name',
                  counterText: '',
                ),
                maxLength: 70,
                onChanged: (value) => context.read<TripFormBloc>()
                    .add(TripFormEvent.nameChanged(value)),
                validator: (value) => (value == null || value.isEmpty)
                    ? "Cannot be empty"
                    : null,
              ),
              const SizedBox(height: 8,),
              TextFormField(
                controller: descriptionEditingController,
                decoration: const InputDecoration(
                  hintText: 'description',
                  counterText: '',
                ),
                maxLength: TripDescription.maxLength,
                maxLines: 5,
                minLines: 1,
                onChanged: (value) => context.read<TripFormBloc>()
                    .add(TripFormEvent.descriptionChanged(value)),
                validator: (_) => Provider.of<TripFormBloc>(context, listen: false)
                  .state.trip.name.value.fold(
                    (fai1lure) => fai1lure.maybeMap(
                      exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                      orElse: () => null,
                    ),
                    (r) => null,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  greyButton(
                    onPressed: () => Navigator.of(context).pop(),
                    title: "CANCEL",
                  ),
                  const SizedBox(width: 10),
                  amberButton(
                    onPressed: () {
                      if (_globalTripFormKey.currentState?.validate() ?? false) {
                        context.read<TripFormBloc>()
                            .add(const TripFormEvent.saved());
                      }
                    },
                    title: "SAVE",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
