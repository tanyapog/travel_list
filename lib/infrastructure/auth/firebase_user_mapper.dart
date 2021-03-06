import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:travel_list/domain/auth/email.dart';
import 'package:travel_list/domain/auth/user.dart';
import 'package:travel_list/domain/core/value_objects.dart';

extension FirebaseUserMapper on firebase.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      name: StringSingleLine(displayName ?? email.split('@').first),
      email: Email.dirty(email),
    );
  }
}