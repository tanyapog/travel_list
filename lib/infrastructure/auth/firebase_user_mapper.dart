import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel_list/domain/auth/user.dart';
import 'package:travel_list/domain/auth/value_objects.dart';
import 'package:travel_list/domain/core/value_objects.dart';

extension FirebaseUserMapper on FirebaseUser {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      name: StringSingleLine(displayName ?? email.split('@').first),
      email: Email(email),
    );
  }
}