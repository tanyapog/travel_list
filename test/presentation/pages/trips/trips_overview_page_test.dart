import 'package:bloc_test/bloc_test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';
import 'package:mocktail/mocktail.dart';
import 'package:travel_list/application/trips/trip_watcher/trip_watcher_bloc.dart';
import 'package:travel_list/domain/core/value_objects.dart';
import 'package:travel_list/domain/trips/trip.dart';
import 'package:travel_list/domain/trips/value_objects.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/pages/categories/widgets/critical_failure_display.dart';
import 'package:travel_list/presentation/pages/trips/trips_overview_page.dart';
import 'package:travel_list/presentation/pages/trips/widgets/error_trip_card.dart';
import 'package:travel_list/presentation/pages/trips/widgets/trip_card.dart';
import 'package:travel_list/presentation/pages/trips/widgets/trips_overview_body.dart';

class MockTripWatcherBloc
    extends MockBloc<TripWatcherEvent, TripWatcherState>
    implements TripWatcherBloc {}

Future<void> main() async {
  const name = 'Norway 2021';
  const description = 'hiking';
  const isComplete = false;

  configureInjection(Environment.test);
  final _firestore = getIt<FirebaseFirestore>();
  final DocumentReference tripRef = await _firestore.collection('users').doc('mockUid').collection('trips').add({
    'name': name,
    'description' : description,
    'complete' : isComplete,
    'dateCreating' : DateTime.now(),
  });

  // final tripWatcherBloc = MockTripWatcherBloc();
  // when(() => tripWatcherBloc.state).thenReturn(TripWatcherState.loadSuccess(
  //   [Trip(
  //     id: UniqueId.fromUniqueString(tripRef.id),
  //     name: TripName(name),
  //     description: TripDescription(description),
  //     complete: isComplete,
  //   )],
  // ));

  final tripsOverviewPage = MediaQuery(
    data: const MediaQueryData(),
    child: MaterialApp(
      home: TripsOverviewPage(),
      // home: BlocProvider<TripWatcherBloc>.value(
      //   value: tripWatcherBloc,
      //   child: TripsOverviewPage(),
      // ),
    ),
  );

  group('TripsOverviewPage', () {
    testWidgets('List of trips shown', (WidgetTester tester) async {

      await tester.idle();
      await tester.pumpWidget(tripsOverviewPage, const Duration(seconds: 3));
      expect(find.byType(TripsOverviewPage), findsOneWidget);
      expect(find.byType(CriticalFailureDisplay), findsNothing);
      expect(find.byType(ErrorTripCard), findsNothing);
      // expect(find.byType(TripCard), findsOneWidget);
      // expect(find.text('Norway 2021'), findsOneWidget);
      // expect(find.text('hiking'), findsOneWidget);
    });
  });
}
