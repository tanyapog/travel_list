import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

// @MaterialAutoRouter(
//   // generateNavigationHelperExtension: true,
//   replaceInRouteName: 'Page,Route',
//   routes: <AutoRoute> [
//     MaterialRoute(page: SplashPage, initial: true),
//     MaterialRoute(page: SignInPage),
//     MaterialRoute(page: TripsOverviewPage),
//     MaterialRoute(page: CategoriesOverviewPage),
//     MaterialRoute(page: GeneratorPage),
//     // NewLuggageListWizardPage // fill trip form and offers different ways to create a new LuggageList step by step
//     // GeneratorPage // wizard for creating new LuggageList by choosing different options
//     // TemplatesOverviewPage // creating a new LuggageList base on existing template
//     // duplicatePriviesTrip // another way to create a new LuggageList
//     // selectFromCatalog // choose items from custom catalogue
//   ],
// )
// class $Router {}

@lazySingleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class Router extends $Router {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: SplashRoute.page),
    AutoRoute(path: '/signIn', page: SignInRoute.page),
    AutoRoute(path: '/tripsOverview', page: TripsOverviewRoute.page),
    AutoRoute(path: '/categoriesOverview', page: CategoriesOverviewRoute.page),
    AutoRoute(path: '/generator', page: GeneratorRoute.page),
  ];
}

/// Если приложение запустилось по initial deeplink, сработает AutoRouter.of(context).pop(),
/// если же обычным способом, то иногда только Navigator.of(context).pop() (глубже не разбиралась)
bool canPop(BuildContext context) => Navigator.of(context).canPop() || AutoRouter.of(context).canPop();

void pop(BuildContext context) =>
    Navigator.of(context).canPop() ? Navigator.of(context).pop() : AutoRouter.of(context).pop();

