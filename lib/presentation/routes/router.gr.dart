// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/categories/category.dart';
import '../../domain/trips/trip.dart';
import '../pages/categories/categories_overview_page.dart';
import '../pages/categories/widgets/category_edit_dialog.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/splash/splash_page.dart';
import '../pages/trips/trip_form/trip_form_page.dart';
import '../pages/trips/trips_overview/trips_overview_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String tripsOverviewPage = '/trips-overview-page';
  static const String tripFormPage = '/trip-form-page';
  static const String categoriesOverviewPage = '/categories-overview-page';
  static const String categoryEditDialog = '/category-edit-dialog';
  static const all = <String>{
    splashPage,
    signInPage,
    tripsOverviewPage,
    tripFormPage,
    categoriesOverviewPage,
    categoryEditDialog,
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
    RouteDef(Routes.categoriesOverviewPage, page: CategoriesOverviewPage),
    RouteDef(Routes.categoryEditDialog, page: CategoryEditDialog),
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
    CategoriesOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CategoriesOverviewPage(),
        settings: data,
      );
    },
    CategoryEditDialog: (data) {
      final args = data.getArgs<CategoryEditDialogArguments>(
        orElse: () => CategoryEditDialogArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CategoryEditDialog(
          key: args.key,
          category: args.category,
        ),
        settings: data,
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

  Future<dynamic> pushCategoriesOverviewPage() =>
      push<dynamic>(Routes.categoriesOverviewPage);

  Future<dynamic> pushCategoryEditDialog({
    Key key,
    Category category,
  }) =>
      push<dynamic>(
        Routes.categoryEditDialog,
        arguments: CategoryEditDialogArguments(key: key, category: category),
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

/// CategoryEditDialog arguments holder class
class CategoryEditDialogArguments {
  final Key key;
  final Category category;
  CategoryEditDialogArguments({this.key, this.category});
}
