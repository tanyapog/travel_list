import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';
import 'package:integration_test/integration_test.dart';
import 'package:travel_list/injection.dart';

import 'presentation/pages/sign_in/sign_in_page_i_test.dart';
import 'test_globals.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod, NoEnvOrContains(Environment.prod));

  deleteTestUserIfNeed(itEmail, itPassword);

  signInPageTest();
}

Future <void> deleteTestUserIfNeed(String email, String password) async {
  await Firebase.initializeApp();
  final FirebaseAuth _firebaseAuth = getIt<FirebaseAuth>();
  try {
    await _firebaseAuth
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      // nothing to do
      return;
    } else {print("Can't  login: $e");}
  } on Exception catch (e) {print("Can't  login: $e");}

  final User? testUser = _firebaseAuth.currentUser;
  if (testUser != null) {
    testUser.delete()
        .then((value) => print("test user deleted"))
        .catchError((error) => print("Can't  delete test user: $error"));
    _firebaseAuth.signOut();
  }
}
