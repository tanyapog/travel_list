import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

IconSlideAction customDeleteSlideAction({@required void Function() onTap}) {
  return IconSlideAction(
    caption: 'Delete',
    icon: Icons.delete,
    color: Colors.red,
    onTap: onTap,
  );
}