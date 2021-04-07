import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/pages/sign_in/sign_in_page.dart';

void main() {
  testWidgets('empty email and password', (WidgetTester tester) async {
    WidgetsFlutterBinding.ensureInitialized();
    configureInjection(Environment.test, const SimpleEnvironmentFilter());

    final signInPage = MediaQuery(
        data: const MediaQueryData(),
        child: MaterialApp(home: SignInPage(),)
    );

    await tester.pumpWidget(signInPage);

    expect(find.bySemanticsLabel('Email'), findsOneWidget);
    expect(find.bySemanticsLabel('Password'), findsOneWidget);
  });
}