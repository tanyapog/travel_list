import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/domain/auth/auth_failure.dart';
import 'package:travel_list/domain/auth/i_auth_facade.dart';
import 'package:travel_list/domain/auth/user.dart';
import 'package:travel_list/domain/auth/value_objects.dart';
import 'package:travel_list/infrastructure/auth/firebase_user_mapper.dart';

// lazy mode shifts the creation to the time the object is the first time requested
// because creating this instance can be time consuming at app start-up
@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Option<User>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return e.code == 'email-already-in-use'
        ? left(const AuthFailure.emailAlreadyInUse())
        : left(AuthFailure.serverError("${e.code}: ${e.message}"));
    } on Exception catch (e) {
      return left(AuthFailure.serverError("Unknown exception: $e"));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return (e.code == 'wrong-password' || e.code == 'user-not-found')
        ? left(const AuthFailure.invalidEmailAndPasswordCombination())
        : left(AuthFailure.serverError("${e.code}: ${e.message}"));
    } on Exception catch (e) {
      return left(AuthFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuth = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );
      return _firebaseAuth
        .signInWithCredential(authCredential)
        .then((value) => right(unit));
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.serverError("${e.code}: ${e.message}"));
    } catch (e) {
      return left(AuthFailure.serverError(e.toString()));
    }
  }

  @override
  Future<void> signOut() => Future.wait([ // we could use this construction to wait multiple Futures
    _googleSignIn.signOut(),
    _firebaseAuth.signOut(),
  ]);
}
