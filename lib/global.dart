import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'injection.dart';

bool useFirebaseEmulator = false; // set true to test on Firebase Emulator

Future<void> connectToEmulator() async {
  final host = Platform.isAndroid ? '10.10.11.47' : 'localhost';
  getIt<FirebaseFirestore>().useFirestoreEmulator(host, 8080);
  await getIt<FirebaseAuth>().useAuthEmulator(host, 9099);
}
