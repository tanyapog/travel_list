import 'package:auto_route/annotations.dart';
import 'package:cool_stepper/cool_stepper.dart';
import 'package:flutter/material.dart';

@RoutePage()
class GeneratorPage extends StatefulWidget {
  const GeneratorPage({Key? key}) : super(key: key);

  @override
  State<GeneratorPage> createState() => _GeneratorPageState();
}

class _GeneratorPageState extends State<GeneratorPage> {
  static final _tripFormKey = GlobalKey<FormState>();
  static final nameController = TextEditingController();
  static final descriptionController = TextEditingController();

  final tripStep = CoolStep(
    title: "Trip information",
    subtitle: "A new trip will be created",
    content: const Center(child: Text("Trip info")),
    // TripFormBody(
    //   key: _tripFormKey,
    //   nameController: nameController,
    //   descriptionController: descriptionController,
    // ),
    validation: () => null,
  );

  final generatorStep = CoolStep(
    title: "Trip features",
    subtitle: "The list of luggage will be formed according selected options",
    content: const Center(child: Text("Trip features")),
    validation: null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List generator"),
      ),
      body: CoolStepper(
        onCompleted: () => print('Your travel list created'),
        steps: [tripStep, generatorStep],
        config: const CoolStepperConfig(backText: "BACK"),
      ),
    );
  }
}



