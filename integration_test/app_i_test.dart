import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';
import 'package:integration_test/integration_test.dart';
import 'package:travel_list/injection.dart';

import 'presentation/pages/categories/categories_i_test.dart';
import 'presentation/pages/sign_in/sign_in_page_i_test.dart';
import 'presentation/pages/trips/trips_i_test.dart';
import 'test_globals.dart';

Future<void> main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod, NoEnvOrContains(Environment.prod));

  await deleteTestUserIfNeed(itEmail, itPassword);
  debugPrintSynchronously('tanya.pog log:: there is no test user now');
  signInPageTest();
  categoriesTest();
  tripsTest();
}

Future<void> deleteTestUserIfNeed(String email, String password) async {
  await Firebase.initializeApp();
  final _firebaseAuth = getIt<FirebaseAuth>();
  final _firestore = getIt<FirebaseFirestore>();

  debugPrintSynchronously('tanya.pog log:: everything initialized');

  try {
    debugPrintSynchronously('tanya.pog log:: trying sign in as test user');
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      debugPrintSynchronously('tanya.pog log:: test user not found');
      // nothing to do
      return;
    } else {debugPrint("tanya.pog log:: Can't  login: $e");}
  } on Exception catch (e) {debugPrint("tanya.pog log:: Can't  login: $e");}

  debugPrintSynchronously('tanya.pog log:: going to check logging in results');

  final User? testUser = _firebaseAuth.currentUser;
  if (testUser != null) {
    debugPrintSynchronously('tanya.pog log:: logged in as ${testUser.email}, uuid ${testUser.uid}');
    try {
      final testUserDoc = _firestore.collection('users').doc(testUser.uid);
      debugPrintSynchronously('tanya.pog log:: got user doc: $testUserDoc');
      // delete sub collections
      await _deleteCollection(testUserDoc.collection('trips'));
      debugPrintSynchronously('tanya.pog log:: trips are deleted');
      await _deleteCollection(testUserDoc.collection('categories'));
      debugPrintSynchronously('tanya.pog log:: categories are deleted');
      // delete test user
      await testUserDoc.delete()
        .catchError((error) => debugPrintSynchronously('tanya.pog log:: can not delete test user document'));
      debugPrintSynchronously('tanya.pog log:: user doc deleted');
      await testUser.delete()
        .catchError((error) => debugPrintSynchronously("tanya.pog log:: Can't  delete test user: $error"));
      debugPrintSynchronously('tanya.pog log:: test user deleted');
      await _firebaseAuth.signOut().catchError((error) => debugPrintSynchronously('tanya.pog log:: can not sign out'));
      debugPrintSynchronously('tanya.pog log:: sign out successfully');
    } on Exception catch (e) {
      debugPrintSynchronously("tanya.pog log:: Error: $e");
    }
  }
}

Future<void> _deleteCollection(CollectionReference collection) async {
  try {
    // todo retrieve a small batch of documents to avoid out-of-memory errors
    final documents = await collection.get().then((querySnapshot) => querySnapshot.docs);
    if (documents.isNotEmpty) {
      debugPrintSynchronously('tanya.pog log:: amount documents to delete: ${documents.length}');
      for(final document in documents) {
        debugPrintSynchronously('tanya.pog log:: going to delete doc with id=${document.id}');
        await document.reference.delete();
      }
    }
  } on Exception catch (e) {
    debugPrintSynchronously("tanya.pog log:: Error deleting collection : $e");
  }
}
