import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:travel_list/application/trips/trip_form/trip_form_bloc.dart';
import 'package:travel_list/domain/trips/value_objects.dart';

class TripFormBody extends HookWidget {
  const TripFormBody({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameEditingController = useTextEditingController();
    final descriptionEditingController = useTextEditingController();

    return BlocListener<TripFormBloc, TripFormState>(
      listenWhen: (previous, current) => previous.isEditing != current.isEditing,
      listener: (context, state) {
        nameEditingController.text = state.trip.name.getOrCrash();
        descriptionEditingController.text = state.trip.description.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextFormField( // name field
              controller: nameEditingController,
              decoration: const InputDecoration(
                hintText: 'name',
                counterText: '',
              ),
              maxLength: TripName.maxLength,
              onChanged: (value) => context.read<TripFormBloc>()
                  .add(TripFormEvent.nameChanged(value)),
              validator: (_) => Provider.of<TripFormBloc>(context, listen: false)
                .state.trip.name.value.fold(
                  (fai1lure) => fai1lure.maybeMap(
                    empty: (f) => 'Cannot be empty',
                    exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                    multiline: (f) => 'Cannot be multiline',
                    orElse: () => null,
                  ),
                  (r) => null,
                ),
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
          ],
        ),
      ),
    );
  }
}