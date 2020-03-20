import 'package:flutter/material.dart';
import 'package:travel_list/shared/routing_constants.dart';
import 'router.dart' as router;

class RootAppWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: router.generateRoute,
      initialRoute: RootRoute,
    );
  }
}