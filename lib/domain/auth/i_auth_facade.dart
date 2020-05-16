import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:travel_list/domain/auth/auth_failure.dart';
import 'package:travel_list/domain/auth/user.dart';
import 'package:travel_list/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required Email email,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required Email email,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}