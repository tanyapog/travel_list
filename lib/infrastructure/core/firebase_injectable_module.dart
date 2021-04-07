import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in_mocks/google_sign_in_mocks.dart';
import 'package:injectable/injectable.dart';

@prod
@module
abstract class FirebaseInjectableModule {
  @prod
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
  @prod
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @prod
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
}

@test
@module
abstract class FirebaseTestInjectableModule {
  @test
  @lazySingleton
  GoogleSignIn get googleSignIn => MockGoogleSignIn();
  @test
  @lazySingleton
  FirebaseAuth get firebaseAuth => MockFirebaseAuth();
  @test
  @lazySingleton
  FirebaseFirestore get firestore => MockFirestoreInstance();
}