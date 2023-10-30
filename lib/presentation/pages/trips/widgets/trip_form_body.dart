import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:provider/provider.dart';
import 'package:travel_list/application/trips/trip_form/trip_form_bloc.dart';
import 'package:travel_list/domain/trips/value_objects.dart';

class TripFormBody extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController descriptionController;
  final TextEditingController dateStartController;
  final TextEditingController dateEndController;

  const TripFormBody({
    Key? key,
    required this.nameController,
    required this.descriptionController,
    required this.dateStartController,
    required this.dateEndController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // To make the card compact
      children: <Widget>[
        BlocBuilder<TripFormBloc, TripFormState>( // TODO check does it really reduce rebuilding count
          buildWhen: (previous, current) => previous.isEditing != current.isEditing,
          builder: (context, state) => state.isEditing
            ? const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text("Edit a trip", style: TextStyle(fontWeight: FontWeight.bold)),
            )
            : Container(),
        ),
        TextFormField( // name field
          controller: nameController,
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
        const SizedBox(height: 8),
        TextFormField(
          controller: descriptionController,
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
              (failure) => failure.maybeMap(
                exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                orElse: () => null),
              (r) => null,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: dateStartController,
          readOnly: true,
          decoration: const InputDecoration(
            hintText: 'from',
            counterText: '',
          ),
          onTap: () => DatePicker.showDatePicker(context,
            onConfirm: (date) => context.read<TripFormBloc>()
              .add(TripFormEvent.dateStartChanged(date)),),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: dateEndController,
          readOnly: true,
          decoration: const InputDecoration(
            hintText: 'to',
            counterText: '',
          ),
          onTap: () => DatePicker.showDatePicker(context,
            onConfirm: (date) => context.read<TripFormBloc>()
              .add(TripFormEvent.dateEndChanged(date)),),
        ),
      ],
    );
  }
}
