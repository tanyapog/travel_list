import 'package:auto_route/annotations.dart';
import 'package:travel_list/presentation/pages/categories/categories_overview_page.dart';
import 'package:travel_list/presentation/pages/sign_in/sign_in_page.dart';
import 'package:travel_list/presentation/pages/splash/splash_page.dart';
import 'package:travel_list/presentation/pages/trips/trip_form/trip_form_page.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/trips_overview_page.dart';

@MaterialAutoRouter(
  // generateNavigationHelperExtension: true,
  routes: <AutoRoute> [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: TripsOverviewPage),
    MaterialRoute(page: TripFormPage, fullscreenDialog: true),
    MaterialRoute(page: CategoriesOverviewPage),
    // NewLuggageListWizardPage // fill trip form adn offers different ways to create a new LuggageList step by step
    // GeneratorPage // wizard for creating new LuggageList by choosing different options
    // TemplatesOverviewPage // creating a new LuggageList base on existing template
    // duplicatePriviesTrip // another way to create a new LuggageList
    // selectFromCatalog // choose items from custom catalogue
  ],
)
class $Router {}