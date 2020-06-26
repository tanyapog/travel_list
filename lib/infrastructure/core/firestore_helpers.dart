import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_list/domain/auth/i_auth_facade.dart';
import 'package:travel_list/domain/core/errors.dart';
import 'package:travel_list/injection.dart';

extension FirestoreX on Firestore {
  Future<DocumentReference> userDocument() async {
     final userOption = await getIt<IAuthFacade>().getSignedInUser();
     final user = userOption.getOrElse(() => throw NotAuthenticatedError());
     return Firestore.instance.collection('users').document(user.id.getOrCrash().toString());
  }
}

extension DocumentReferenceX on DocumentReference {
   CollectionReference get tripCollection => collection('trips');
}