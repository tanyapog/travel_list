import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:travel_list/domain/auth/user.dart';
import 'package:travel_list/domain/auth/value_objects.dart';
import 'package:travel_list/domain/core/value_objects.dart';

extension FirebaseUserMapper on firebase.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      // TravelList doesn't permit incorrect email while Firebase do, so ! is ok here
      name: StringSingleLine(displayName ?? email!.split('@').first),
      email: Email(email!),
    );
  }
}
