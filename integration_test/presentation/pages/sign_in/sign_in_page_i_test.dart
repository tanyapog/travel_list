import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_list/presentation/core/app_widget.dart';
import 'package:travel_list/presentation/pages/sign_in/sign_in_page.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/trips_overview_page.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/widgets/trip_card.dart';

import '../../../test_globals.dart';

Future<void> signInPageTest() async {
  Finder findEmail() => find.bySemanticsLabel('Email');
  Finder findPassword() => find.bySemanticsLabel('Password');
  Finder findRegisterButton() => find.text('REGISTER');
  Finder findSignInButton() => find.text('SIGN IN');
  Finder findAccessDeniedMessage() => find.text('Invalid email and password combination', skipOffstage: false);

  group('Registration, signIn and signOut tests', () {
    testWidgets(
      'First we trying to log in with non existing user and should get red message that we can not. '
      'Then we press "Registration" button and should get into empty trip list page',
      (WidgetTester tester) async {
        debugPrintSynchronously('tanya.pog log:: starting sign_in_page_i_test');
        await tester.pumpWidget(AppWidget());
        await tester.pumpAndSettle();

        await tester.enterText(findEmail(), itEmail);
        await tester.enterText(findPassword(), itPassword);
        await tester.pumpAndSettle();

        await tester.tap(findSignInButton());
        await tester.pumpAndSettle(const Duration(seconds: 1));

        expect(find.byType(SignInPage), findsOneWidget);
        expect(findAccessDeniedMessage(), findsOneWidget);
        await tester.pumpAndSettle(const Duration(seconds: 3));

        await tester.tap(findRegisterButton());
        await tester.pumpAndSettle();

        expect(find.byType(SignInPage), findsNothing);
        expect(find.byType(TripsOverviewPage), findsOneWidget);
        expect(find.byType(TripCard), findsNothing);

        await tester.tap(find.byIcon(Icons.menu));
        await tester.pumpAndSettle();
        expect(find.text(itUsername), findsOneWidget);
      }
    );

    testWidgets(
      'Pressing "SignOut" option of side menu should lead us back to SignIn page',
      (WidgetTester tester) async {
        await tester.pumpWidget(AppWidget());
        await tester.pumpAndSettle();

        await tester.tap(find.byIcon(Icons.menu));
        await tester.pumpAndSettle();

        await tester.tap(find.byIcon(Icons.exit_to_app));
        await tester.pumpAndSettle(const Duration(seconds: 1));

        expect(find.byType(SignInPage), findsOneWidget);
      }
    );

    testWidgets(
      'After success authentication we should see a list of trips '
      'and menu with name of a user',
      (WidgetTester tester) async {
        await tester.pumpWidget(AppWidget());
        await tester.pumpAndSettle();

        await tester.enterText(findEmail(), itEmail);
        await tester.enterText(findPassword(), itPassword);
        await tester.pumpAndSettle();

        await tester.tap(findSignInButton());
        await tester.pumpAndSettle();

        expect(find.byType(SignInPage), findsNothing);
        expect(find.byType(TripsOverviewPage), findsOneWidget);

        await tester.tap(find.byIcon(Icons.menu));
        await tester.pumpAndSettle();
        expect(find.text(itUsername), findsOneWidget);
      }
    );
  });
}
