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
    SplashPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    TripsOverviewPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.TripsOverviewPage());
    },
    TripFormPageRoute.name: (routeData) {
      final args = routeData.argsAs<TripFormPageRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.TripFormPage(key: args.key, trip: args.trip),
          fullscreenDialog: true);
    },
    CategoriesOverviewPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.CategoriesOverviewPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashPageRoute.name, path: '/'),
        _i6.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(TripsOverviewPageRoute.name,
            path: '/trips-overview-page'),
        _i6.RouteConfig(TripFormPageRoute.name, path: '/trip-form-page'),
        _i6.RouteConfig(CategoriesOverviewPageRoute.name,
            path: '/categories-overview-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i6.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.SignInPage]
class SignInPageRoute extends _i6.PageRouteInfo<void> {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for [_i3.TripsOverviewPage]
class TripsOverviewPageRoute extends _i6.PageRouteInfo<void> {
  const TripsOverviewPageRoute() : super(name, path: '/trips-overview-page');

  static const String name = 'TripsOverviewPageRoute';
}

/// generated route for [_i4.TripFormPage]
class TripFormPageRoute extends _i6.PageRouteInfo<TripFormPageRouteArgs> {
  TripFormPageRoute({_i7.Key key, required _i8.Trip trip})
      : super(name,
            path: '/trip-form-page',
            args: TripFormPageRouteArgs(key: key, trip: trip));

  static const String name = 'TripFormPageRoute';
}

class TripFormPageRouteArgs {
  const TripFormPageRouteArgs({this.key, required this.trip});

  final _i7.Key key;

  final _i8.Trip trip;
}

/// generated route for [_i5.CategoriesOverviewPage]
class CategoriesOverviewPageRoute extends _i6.PageRouteInfo<void> {
  const CategoriesOverviewPageRoute()
      : super(name, path: '/categories-overview-page');

  static const String name = 'CategoriesOverviewPageRoute';
}
