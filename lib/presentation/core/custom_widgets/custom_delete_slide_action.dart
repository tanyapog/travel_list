import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

SlidableAction customDeleteSlideAction({required void Function(BuildContext) onPressed}) {
  return SlidableAction(
    onPressed: onPressed,
    backgroundColor: Colors.red,
    foregroundColor: Colors.white,
    icon: Icons.delete,
    label: 'Delete',
  );
}
