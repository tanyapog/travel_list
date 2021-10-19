import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/injection.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_list/presentation/core/app_widget.dart';
import 'package:travel_list/presentation/pages/sign_in/sign_in_page.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/trips_overview_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod, const SimpleEnvironmentFilter());

  Finder findEmail() => find.bySemanticsLabel('Email');
  Finder findPassword() => find.bySemanticsLabel('Password');
  Finder findSignInButton() => find.text('SIGN IN');

  group('SingIn tests', () {
    testWidgets(
        'After success authentication we should see a list of trips '
        'and menu with name of a user', (WidgetTester tester) async {
      await Firebase.initializeApp();

      await tester.pumpWidget(AppWidget());
      await tester.pumpAndSettle();

      await tester.enterText(findEmail(), 'tl_tester@test.com');
      await tester.enterText(findPassword(), 'tlpwd123');
      await tester.pumpAndSettle();

      await tester.tap(findSignInButton());
      await tester.pumpAndSettle();

      expect(find.byType(SignInPage), findsNothing);
      expect(find.byType(TripsOverviewPage), findsOneWidget);

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();
      expect(find.text('tl_tester'), findsOneWidget);
    });
  });
}
