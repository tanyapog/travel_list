import 'package:flutter/material.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_buttons.dart';

// Panel of custom buttons [CANCEL/BACK   NEXT/FINISH]
class ControlPanel extends StatelessWidget {
  final void Function()? onNext;
  final void Function()? onBack;
  final void Function()? onFinish;
  final bool firstStep;

  const ControlPanel({
    Key? key,
    this.onNext,
    this.onBack,
    this.onFinish,
    this.firstStep = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GreyButton(
              onPressed: () => Navigator.of(context).pop(),
              title: firstStep ? 'CANCEL' : 'BACK',
            ),
            if (onFinish == null) AmberButton(
              onPressed: onNext,
              title: 'NEXT',)
            else AmberButton(
              onPressed: onFinish,
              title: 'FINISH',),
          ],
        ),
      ),
    );
  }
}
