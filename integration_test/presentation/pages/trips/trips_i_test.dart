import 'package:flutter_test/flutter_test.dart';
import 'package:travel_list/presentation/core/app_widget.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview_page.dart';
import 'package:travel_list/presentation/pages/trips/widgets/trip_card.dart';

// this test tests both tipsOverviewPage and TripFormPage
Future<void> tripsTest() async {
  // const _tripName = 'Norway 2021';
  // const _tripEditedName = 'Norway jun, 2021';

  // Finder findTripNameField() => find.bySemanticsLabel('name');
  // Finder findTripDescriptionField() => find.bySemanticsLabel('description');
  // Finder findSaveButton() => find.text('SAVE');

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

    // testWidgets(
    //     'Creating a trip with empty name is prohibited. '
    //     'After creating trip "Norway 2021" it should appear in list',
    //     (WidgetTester tester) async {
    //       await tester.pumpWidget(AppWidget());
    //       await tester.pumpAndSettle();
    //
    //       await tester.tap(find.byIcon(Icons.add));
    //       await tester.pumpAndSettle();
    //       expect(find.byType(TripEditingDialog), findsOneWidget);
    //       expect(find.text('Create a trip'), findsOneWidget);
    //
    //       final Form tripForm = tester.widget(find.byType(Form)) as Form;
    //       final GlobalKey<FormState> formKey = tripForm.key! as GlobalKey<FormState>;
    //
    //       await tester.tap(findSaveButton());
    //       await tester.pumpAndSettle(const Duration(seconds: 1));
    //       expect(formKey.currentState?.validate(), isFalse);
    //       expect(find.text('Cannot be empty'), findsOneWidget);
    //
    //       await tester.enterText(findTripNameField(), _tripName);
    //       await tester.enterText(findTripDescriptionField(), 'hiking');
    //       await tester.pumpAndSettle();
    //
    //       await tester.tap(findSaveButton());
    //       await tester.pumpAndSettle(const Duration(seconds: 1));
    //       expect(find.byType(TripsOverviewPage), findsOneWidget);
    //       expect(find.text(_tripName), findsOneWidget);
    //       expect(find.byKey(const Key('TripDescription')), findsOneWidget);
    //     }
    // );
    //
    // testWidgets(
    //     'Trip is editable',
    //     (WidgetTester tester) async {
    //       await tester.pumpWidget(AppWidget());
    //       await tester.pumpAndSettle();
    //
    //       await tester.tap(find.text(_tripName));
    //       await tester.pumpAndSettle();
    //       expect(find.byType(TripEditingDialog), findsOneWidget);
    //       expect(find.text('Edit a trip'), findsOneWidget);
    //
    //       await tester.enterText(findTripNameField(), _tripEditedName);
    //       await tester.pumpAndSettle();
    //
    //       await tester.tap(findSaveButton());
    //       await tester.pumpAndSettle(const Duration(seconds: 1));
    //       expect(find.byType(TripsOverviewPage), findsOneWidget);
    //       expect(find.text(_tripEditedName), findsOneWidget);
    //     }
    // );
    //
    // testWidgets(
    //     'After deleting trip the list of trips should be empty again',
    //         (WidgetTester tester) async {
    //       await tester.pumpWidget(AppWidget());
    //       await tester.pumpAndSettle();
    //
    //       final _tripCard = find.byType(Slidable);
    //       final _deleteButton = find.byIcon(Icons.delete);
    //
    //       await tester.dragUntilVisible(_deleteButton, _tripCard, const Offset(-100, 0));
    //       await tester.pump(const Duration(seconds: 1));
    //
    //       await tester.tap(_deleteButton);
    //       await tester.pumpAndSettle(const Duration(seconds: 1));
    //       expect(find.text('Deleting a trip'), findsOneWidget);
    //
    //       final _tripNameOnDeletionDialog = find.byWidgetPredicate(
    //         (widget) => widget is Text &&
    //           widget.key == const Key('tripName') &&
    //           widget.data == _tripEditedName,
    //         description: 'trip name on deletion dialog',
    //       );
    //       expect(_tripNameOnDeletionDialog, findsOneWidget);
    //       await tester.tap(find.text('DELETE'));
    //       await tester.pumpAndSettle(const Duration(seconds: 1));
    //
    //       expect(find.byType(TripsOverviewPage), findsOneWidget);
    //       expect(find.byType(TripCard), findsNothing);
    //     }
    // );
  });
}
