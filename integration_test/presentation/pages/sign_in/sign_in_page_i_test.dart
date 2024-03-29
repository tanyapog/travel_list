import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_list/presentation/core/app_widget.dart';
import 'package:travel_list/presentation/pages/sign_in/sign_in_page.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview_page.dart';
import 'package:travel_list/presentation/pages/trips/widgets/trip_card.dart';

import '../../../test_globals.dart';

Future<void> signInPageTest() async {
  Finder findEmail() => find.bySemanticsLabel('Email');
  Finder findPassword() => find.bySemanticsLabel('Password');
  Finder findRegisterButton() => find.text('REGISTER');
  Finder findSignInButton() => find.text('SIGN IN');
  Finder findAccessDeniedMessage() => find.text('Invalid email and password combination', skipOffstage: false);
  Finder findEmailInUseMessage() => find.text('Email already in use', skipOffstage: false);

  group('Registration, signIn and signOut tests', () {
    testWidgets(
      'First we trying to log in with non existing user and should get red message that we can not. '
      'Then we press "Registration" button and should get into empty trip list page',
      (WidgetTester tester) async {
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
        'The test of email-already-in-use error handling: '
        'we try to register user with email equals to user email from the '
        'registration user test. As a result we should get an error message',
        (WidgetTester tester) async {
          await tester.pumpWidget(AppWidget());
          await tester.pumpAndSettle();

          await tester.enterText(findEmail(), itEmail);
          await tester.enterText(findPassword(), itPassword);
          await tester.pumpAndSettle();

          await tester.tap(findRegisterButton());
          await tester.pumpAndSettle();

          expect(find.byType(SignInPage), findsOneWidget);
          expect(findEmailInUseMessage(), findsOneWidget);
          await tester.pumpAndSettle(const Duration(seconds: 3));
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

  // !!! Do not commit uncommented !!! start <<
  // group('quick authentication actions for the needs of developing', () {
  //   // testWidgets('fake test', (WidgetTester tester) async {
  //   //   await tester.pumpWidget(AppWidget());
  //   //   await tester.pumpAndSettle();
  //   //   expect(find.byType(SignInPage), findsOneWidget);
  //   //   // expect(find.byType(SignInPage), findsNothing);
  //   // });
  //
  //   testWidgets(
  //       'quick register',
  //           (WidgetTester tester) async {
  //         await tester.pumpWidget(AppWidget());
  //         await tester.pumpAndSettle();
  //
  //         await tester.enterText(findEmail(), itEmail);
  //         await tester.enterText(findPassword(), itPassword);
  //         await tester.pumpAndSettle();
  //
  //         await tester.tap(findRegisterButton());
  //         await tester.pumpAndSettle(const Duration(seconds: 1));
  //       }
  //   );
  //
  //   // testWidgets(
  //   //   'quick login',
  //   //   (WidgetTester tester) async {
  //   //     await tester.pumpWidget(AppWidget());
  //   //     await tester.pumpAndSettle();
  //   //
  //   //     await tester.enterText(findEmail(), itEmail);
  //   //     await tester.enterText(findPassword(), itPassword);
  //   //     await tester.pumpAndSettle();
  //   //
  //   //     await tester.tap(findSignInButton());
  //   //     await tester.pumpAndSettle(const Duration(seconds: 1));
  //   //   }
  //   // );
  // });
  // end >>
}
