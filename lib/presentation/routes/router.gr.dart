// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/trips/trip.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/splash/splash_page.dart';
import '../pages/trips/trip_form/trip_form_page.dart';
import '../pages/trips/trips_overview/trips_overview_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String tripsOverviewPage = '/trips-overview-page';
  static const String tripFormPage = '/trip-form-page';
  static const all = <String>{
    splashPage,
    signInPage,
    tripsOverviewPage,
    tripFormPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.tripsOverviewPage, page: TripsOverviewPage),
    RouteDef(Routes.tripFormPage, page: TripFormPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    TripsOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TripsOverviewPage(),
        settings: data,
      );
    },
    TripFormPage: (data) {
      final args = data.getArgs<TripFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => TripFormPage(
          key: args.key,
          trip: args.trip,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushTripsOverviewPage() =>
      push<dynamic>(Routes.tripsOverviewPage);

  Future<dynamic> pushTripFormPage({
    Key key,
    @required Trip trip,
  }) =>
      push<dynamic>(
        Routes.tripFormPage,
        arguments: TripFormPageArguments(key: key, trip: trip),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// TripFormPage arguments holder class
class TripFormPageArguments {
  final Key key;
  final Trip trip;
  TripFormPageArguments({this.key, @required this.trip});
}
