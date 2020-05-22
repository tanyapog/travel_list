import 'package:auto_route/auto_route_annotations.dart';
import 'package:travel_list/presentation/pages/luggage_lists/trips/trips_overview_page.dart';
import 'package:travel_list/presentation/pages/sign_in/sign_in_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  generateArgsHolderForSingleParameterRoutes: false
)
class $Router {
  SignInPage signInPage;
  @initial
  TripsOverviewPage tripsOverviewPage;
  // ListPage
  // NewLuggageListWizardPage // fill trip form adn offers different ways to create a new LuggageList step by step
  // GeneratorPage // wizard for creating new LuggageList by choosing different options
  // TemplatesOverviewPage // creating a new LuggageList base on existing template
  // duplicatePriviesTrip // another way to create a new LuggageList 
  // selectFromCatalog // choose items from custom catalogue
}