import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {

  static final ref = FirebaseFirestore.instance
    .collection('characters');

}