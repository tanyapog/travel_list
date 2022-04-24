import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:travel_list/application/trips/trip_form/trip_form_bloc.dart';
import 'package:travel_list/global/tl_date_formats.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_buttons.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_flushbar_helper.dart';
import 'package:travel_list/presentation/core/custom_widgets/dialog_box_decoration.dart';
import 'package:travel_list/presentation/pages/trips/widgets/trip_form_body.dart';
import 'package:travel_list/presentation/routes/router.gr.dart' as app_router;

class TripEditingDialogBody extends HookWidget {
  const TripEditingDialogBody({Key? key,}) : super(key: key);
  static final GlobalKey<FormState> _globalTripFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final dateStartController = useTextEditingController();
    final dateEndController = useTextEditingController();

    return MultiBlocListener(
      listeners: [
        BlocListener<TripFormBloc, TripFormState> (
          listenWhen: (previous, current) =>
            previous.isEditing != current.isEditing,
          listener: (context, state) {
            nameController.text = state.trip.name.getOrCrash();
            descriptionController.text = state.trip.description.getOrCrash();
          },
        ),
        BlocListener<TripFormBloc, TripFormState> (
          listener: (context, state) {
            dateStartController.text = (state.trip.dateStart != null)
              ? state.trip.dateStart!.fdMMMy() : '';
            dateEndController.text = (state.trip.dateEnd != null)
              ? state.trip.dateEnd!.fdMMMy() : '';
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
                  route.settings.name == app_router.TripsOverviewRoute.name,),
              ),
            ),
        ),
      ],
      child: customDialog(
        child: Form(
          key: _globalTripFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TripFormBody(
                nameController: nameController,
                descriptionController: descriptionController,
                dateStartController: dateStartController,
                dateEndController: dateEndController,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GreyButton(
                    onPressed: () => Navigator.of(context).pop(),
                    title: "CANCEL",),
                  const SizedBox(width: 10),
                  AmberButton(
                    onPressed: () => _globalTripFormKey.currentState!.validate()
                      ? context.read<TripFormBloc>().add(const TripFormEvent.saved())
                      : null,
                    title: "SAVE",),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
