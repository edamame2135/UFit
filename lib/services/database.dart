import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/workout.dart';
class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference workoutCollection = FirebaseFirestore.instance.collection('workouts');

  Future initUserData() async {
    return await workoutCollection.doc(uid).set({
      'workouts': []
    });
  }

  Future setUserData(int id, String name, String description, String imagepath) async {
    return await workoutCollection.doc(uid).set({
      'workouts': []
    });
  }

  Future updateUserData(int id, String name, String description, String imagepath) async {
    return await workoutCollection.doc(uid).update({
      'workouts': FieldValue.arrayUnion([{id: 1, name: "bruhh"}])
    });
  }


  Stream<QuerySnapshot> get workouts {
    return workoutCollection.snapshots();
  }
}