// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../domain/trips/trip.dart' as _i8;
import '../pages/categories/categories_overview_page.dart' as _i5;
import '../pages/sign_in/sign_in_page.dart' as _i2;
import '../pages/splash/splash_page.dart' as _i1;
import '../pages/trips/trip_form/trip_form_page.dart' as _i4;
import '../pages/trips/trips_overview/trips_overview_page.dart' as _i3;

class Router extends _i6.RootStackRouter {
  Router([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    TripsOverviewRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.TripsOverviewPage());
    },
    TripFormRoute.name: (routeData) {
      final args = routeData.argsAs<TripFormRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.TripFormPage(key: args.key, trip: args.trip),
          fullscreenDialog: true);
    },
    CategoriesOverviewRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.CategoriesOverviewPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(TripsOverviewRoute.name, path: '/trips-overview-page'),
        _i6.RouteConfig(TripFormRoute.name, path: '/trip-form-page'),
        _i6.RouteConfig(CategoriesOverviewRoute.name,
            path: '/categories-overview-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.TripsOverviewPage]
class TripsOverviewRoute extends _i6.PageRouteInfo<void> {
  const TripsOverviewRoute() : super(name, path: '/trips-overview-page');

  static const String name = 'TripsOverviewRoute';
}

/// generated route for [_i4.TripFormPage]
class TripFormRoute extends _i6.PageRouteInfo<TripFormRouteArgs> {
  TripFormRoute({_i7.Key? key, required _i8.Trip? trip})
      : super(name,
            path: '/trip-form-page',
            args: TripFormRouteArgs(key: key, trip: trip));

  static const String name = 'TripFormRoute';
}

class TripFormRouteArgs {
  const TripFormRouteArgs({this.key, required this.trip});

  final _i7.Key? key;

  final _i8.Trip? trip;

  @override
  String toString() {
    return 'TripFormRouteArgs{key: $key, trip: $trip}';
  }
}

/// generated route for [_i5.CategoriesOverviewPage]
class CategoriesOverviewRoute extends _i6.PageRouteInfo<void> {
  const CategoriesOverviewRoute()
      : super(name, path: '/categories-overview-page');

  static const String name = 'CategoriesOverviewRoute';
}
