// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:travel_list/presentation/pages/categories/categories_overview_page.dart'
    as _i1;
import 'package:travel_list/presentation/pages/generator/generator_page.dart'
    as _i2;
import 'package:travel_list/presentation/pages/sign_in/sign_in_page.dart'
    as _i3;
import 'package:travel_list/presentation/pages/splash/splash_page.dart' as _i4;
import 'package:travel_list/presentation/pages/trips/trips_overview_page.dart'
    as _i5;

abstract class $Router extends _i6.RootStackRouter {
  $Router({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    CategoriesOverviewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CategoriesOverviewPage(),
      );
    },
    GeneratorRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.GeneratorPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.SignInPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.SplashPage(),
      );
    },
    TripsOverviewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.TripsOverviewPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CategoriesOverviewPage]
class CategoriesOverviewRoute extends _i6.PageRouteInfo<void> {
  const CategoriesOverviewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CategoriesOverviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesOverviewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.GeneratorPage]
class GeneratorRoute extends _i6.PageRouteInfo<void> {
  const GeneratorRoute({List<_i6.PageRouteInfo>? children})
      : super(
          GeneratorRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneratorRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.TripsOverviewPage]
class TripsOverviewRoute extends _i6.PageRouteInfo<void> {
  const TripsOverviewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          TripsOverviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'TripsOverviewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
