import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/trips/trip_form/trip_form_bloc.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/core/custom_widgets/saving_in_progress_overlay.dart';
import 'package:travel_list/presentation/pages/trips/widgets/trip_editing_dialog_body.dart';

class TripEditingDialog extends StatelessWidget {
  final Trip? trip;

  const TripEditingDialog({Key? key, this.trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TripFormBloc>(
      create: (context) => (trip == null)
        ? getIt<TripFormBloc>()
        : (getIt<TripFormBloc>()..add(TripFormEvent.initialized(optionOf(trip)))),
      child: BlocBuilder<TripFormBloc, TripFormState>(
        buildWhen: (previous, current) => previous.isSaving != current.isSaving,
        builder: (context, state) =>
            Stack(
              children: [
                const TripEditingDialogBody(),
                SavingInProgressOverlay(isSaving: state.isSaving),
              ],
            ),
      ),
    );
  }
}
