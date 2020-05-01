import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:travel_list/domain/auth/auth_failure.dart';
import 'package:travel_list/domain/auth/email_address.dart';
import 'package:travel_list/domain/auth/password.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}