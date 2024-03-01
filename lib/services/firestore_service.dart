import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_masterclass/models/character.dart';

class FirestoreService {

  static final ref = FirebaseFirestore.instance
    .collection('characters')
    .withConverter(
      fromFirestore: Character.fromFirestore, 
      toFirestore: (Character c, _) => c.toFirestore()
    );

}