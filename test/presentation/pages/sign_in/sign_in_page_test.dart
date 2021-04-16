import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/pages/sign_in/sign_in_page.dart';

void main() {
  // initialising test environment
  configureInjection(Environment.test, const SimpleEnvironmentFilter());
  final signInPage = MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        home: SignInPage(),
      )
  );

  Finder findEmail() => find.bySemanticsLabel('Email');
  Finder findPassword() => find.bySemanticsLabel('Password');
  Finder findSignInButton() => find.text('SIGN IN');
  Finder findRegisterButton() => find.text('REGISTER');
  Finder findSignInWithGoogleButton() => find.text('SIGN IN WITH GOOGLE');

  group('SignInPage', () {

    testWidgets('All elements shown', (WidgetTester tester) async {
      WidgetsFlutterBinding.ensureInitialized();
      await tester.pumpWidget(signInPage);
      expect(findEmail(), findsOneWidget);
      expect(findPassword(), findsOneWidget);
      expect(findSignInButton(), findsOneWidget);
      expect(findRegisterButton(), findsOneWidget);
      expect(findSignInWithGoogleButton(), findsOneWidget);
    });

    testWidgets('Empty email and password are not valid', (WidgetTester tester) async {
      WidgetsFlutterBinding.ensureInitialized();
      await tester.pumpWidget(signInPage);

      final Form signInForm = tester.widget(find.byType(Form)) as Form;
      final GlobalKey<FormState> formKey = signInForm.key as GlobalKey<FormState>;

      await tester.tap(findSignInButton());
      await tester.pump();
      expect(formKey.currentState.validate(), isFalse);
      expect(find.text('Invalid Email'), findsOneWidget);
      expect(find.text('Short Password'), findsOneWidget);
    });

    testWidgets('Incorrect email is invalid', (WidgetTester tester) async {
      WidgetsFlutterBinding.ensureInitialized();
      await tester.pumpWidget(signInPage);

      await tester.enterText(findEmail(), 'not_email_string');
      await tester.tap(findSignInButton());
      await tester.pump();
      expect(find.text('Invalid Email'), findsOneWidget);
    });

  });
}