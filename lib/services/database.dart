import 'package:cloud_firestore/cloud_firestore.dart';
import '../shared/constants.dart';
class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference workoutCollection = FirebaseFirestore.instance.collection('workouts');

  Future updateUserData(List<Workout> workout) async {
    return await workoutCollection.doc(uid).set({
      'workouts': workout
    });
  }

  Stream<QuerySnapshot> get workouts {
    return workoutCollection.snapshots();
  }
}