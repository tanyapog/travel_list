import 'package:flutter/material.dart';

class GreyButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final bool active;

  const GreyButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.active = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: Colors.blueGrey.shade50),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}

class AmberButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final bool active;

  const AmberButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.active = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: Colors.amber),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
