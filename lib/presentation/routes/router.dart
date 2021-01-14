import 'package:auto_route/auto_route_annotations.dart';
import 'package:travel_list/presentation/pages/luggage_lists/trips/trips_overview_page.dart';
import 'package:travel_list/presentation/pages/sign_in/sign_in_page.dart';
import 'package:travel_list/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute> [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: TripsOverviewPage),
    // ListPage
    // NewLuggageListWizardPage // fill trip form adn offers different ways to create a new LuggageList step by step
    // GeneratorPage // wizard for creating new LuggageList by choosing different options
    // TemplatesOverviewPage // creating a new LuggageList base on existing template
    // duplicatePriviesTrip // another way to create a new LuggageList
    // selectFromCatalog // choose items from custom catalogue
  ],
)
class $Router {}