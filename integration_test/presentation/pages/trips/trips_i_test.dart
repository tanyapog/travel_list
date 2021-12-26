import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_list/presentation/core/app_widget.dart';
import 'package:travel_list/presentation/pages/trips/trip_form/trip_form_page.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/trips_overview_page.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview/widgets/trip_card.dart';

// this test tests both tipsOverviewPage and TripFormPage
void tripsTest() {
  const _tripName = 'Norway 2021';
  const _tripNewName = 'Norway jun, 2021';

  group('Overview trips, create, rename and delete trip tests', () {
    testWidgets(
        'First we should see empty list of trips',
        (WidgetTester tester) async {
          await tester.pumpWidget(AppWidget());
          await tester.pumpAndSettle();

          expect(find.byType(TripsOverviewPage), findsOneWidget);
          expect(find.byType(TripCard), findsNothing);
        }
    );

    testWidgets(
        'Creating a trip with empty name is prohibited. '
        'After creating trip "Norway 2021" it should appear in list',
        (WidgetTester tester) async {
          await tester.pumpWidget(AppWidget());
          await tester.pumpAndSettle();

          await tester.tap(find.byIcon(Icons.add));
          await tester.pumpAndSettle();
          expect(find.byType(TripFormPage), findsOneWidget);
          expect(find.text('Create a trip'), findsOneWidget);

          final Form signInForm = tester.widget(find.byType(Form)) as Form;
          final GlobalKey<FormState> formKey = signInForm.key! as GlobalKey<FormState>;

          await tester.tap(find.byIcon(Icons.check));
          await tester.pumpAndSettle(const Duration(seconds: 1));
          expect(formKey.currentState?.validate(), isFalse);
          expect(find.text('Cannot be empty'), findsOneWidget);

          await tester.enterText(find.bySemanticsLabel('name'), _tripName);
          await tester.enterText(find.bySemanticsLabel('description'), 'hiking');
          await tester.pumpAndSettle();

          await tester.tap(find.byIcon(Icons.check));
          await tester.pumpAndSettle(const Duration(seconds: 1));
          expect(find.byType(TripsOverviewPage), findsOneWidget);
          expect(find.text(_tripName), findsOneWidget);
          expect(find.byKey(const Key('TripDescription')), findsOneWidget);
        }
    );

    testWidgets(
        'Creating a trip with empty name is prohibited. '
        'After creating trip "Norway 2021" it should appear in list',
        (WidgetTester tester) async {
          await tester.pumpWidget(AppWidget());
          await tester.pumpAndSettle();

          await tester.tap(find.text(_tripName));
          await tester.pumpAndSettle();
          expect(find.byType(TripFormPage), findsOneWidget);
          expect(find.text('Edit a trip'), findsOneWidget);

          await tester.enterText(find.bySemanticsLabel('name'), _tripNewName);
          await tester.pumpAndSettle();

          await tester.tap(find.byIcon(Icons.check));
          await tester.pumpAndSettle(const Duration(seconds: 1));
          expect(find.byType(TripsOverviewPage), findsOneWidget);
          expect(find.text(_tripNewName), findsOneWidget);
        }
    );
  });
}