import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';
import 'package:integration_test/integration_test.dart';
import 'package:travel_list/global.dart';
import 'package:travel_list/injection.dart';

import 'presentation/pages/categories/categories_i_test.dart';
import 'presentation/pages/sign_in/sign_in_page_i_test.dart';
import 'presentation/pages/trips/trips_i_test.dart';
import 'test_globals.dart';

Future<void> main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod, NoEnvOrContains(Environment.prod));
  await Firebase.initializeApp();
  if (useFirebaseEmulator) {
    await connectToEmulator();
  }

  await deleteTestUserIfNeed(itEmail, itPassword);

  signInPageTest();
  // categoriesTest();
  tripsTest();
}

Future<void> deleteTestUserIfNeed(String email, String password) async {
  final _firebaseAuth = getIt<FirebaseAuth>();
  final _firestore = getIt<FirebaseFirestore>();

  try {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      // nothing to do
      return;
    } else {debugPrintSynchronously("Can't  login: $e");}
  } on Exception catch (e) {debugPrintSynchronously("Can't  login: $e");}

  final User? testUser = _firebaseAuth.currentUser;
  if (testUser != null) {
    try {
      final testUserDoc = _firestore.collection('users').doc(testUser.uid);
      // delete sub collections
      await _deleteCollection(testUserDoc.collection('trips'));
      await _deleteCollection(testUserDoc.collection('categories'));
      // delete test user
      await testUserDoc.delete()
        .catchError((e) => debugPrintSynchronously("Can't delete test user document: $e"));
      await testUser.delete()
        .catchError((e) => debugPrintSynchronously("Can't delete test user: $e"));
      await _firebaseAuth.signOut().catchError((e) => debugPrintSynchronously("Can't sign out: $e"));
    } on Exception catch (e) {
      debugPrintSynchronously("Error while deleting test user: $e");
    }
  }
}

Future<void> _deleteCollection(CollectionReference collection) async {
  try {
    // todo retrieve a small batch of documents to avoid out-of-memory errors
    final documents = await collection.get().then((querySnapshot) => querySnapshot.docs);
    if (documents.isNotEmpty) {
      for(final document in documents) {
        await document.reference.delete();
      }
    }
  } on Exception catch (e) {
    debugPrintSynchronously("Error while deleting collection : $e");
  }
}
