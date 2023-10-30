import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
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
  FirebaseAuth get firebaseAuth => MockFirebaseAuth(
    signedIn: true,
    mockUser: MockUser(uid: 'mockUid', email: 'mock@mockdomain.com', displayName: 'Mock'),
  );
  @test
  @lazySingleton
  FirebaseFirestore get firestore => FakeFirebaseFirestore();
}
