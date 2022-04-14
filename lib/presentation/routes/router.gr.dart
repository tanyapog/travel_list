// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../pages/categories/categories_overview_page.dart' as _i4;
import '../pages/generator/generator_page.dart' as _i5;
import '../pages/sign_in/sign_in_page.dart' as _i2;
import '../pages/splash/splash_page.dart' as _i1;
import '../pages/trips/trips_overview_page.dart' as _i3;

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
    CategoriesOverviewRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.CategoriesOverviewPage());
    },
    GeneratorRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.GeneratorPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(TripsOverviewRoute.name, path: '/trips-overview-page'),
        _i6.RouteConfig(CategoriesOverviewRoute.name,
            path: '/categories-overview-page'),
        _i6.RouteConfig(GeneratorRoute.name, path: '/generator-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.TripsOverviewPage]
class TripsOverviewRoute extends _i6.PageRouteInfo<void> {
  const TripsOverviewRoute()
      : super(TripsOverviewRoute.name, path: '/trips-overview-page');

  static const String name = 'TripsOverviewRoute';
}

/// generated route for
/// [_i4.CategoriesOverviewPage]
class CategoriesOverviewRoute extends _i6.PageRouteInfo<void> {
  const CategoriesOverviewRoute()
      : super(CategoriesOverviewRoute.name, path: '/categories-overview-page');

  static const String name = 'CategoriesOverviewRoute';
}

/// generated route for
/// [_i5.GeneratorPage]
class GeneratorRoute extends _i6.PageRouteInfo<void> {
  const GeneratorRoute() : super(GeneratorRoute.name, path: '/generator-page');

  static const String name = 'GeneratorRoute';
}
