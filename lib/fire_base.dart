// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

// final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// Future<void> initializeFirebase() async {
//   await Firebase.initializeApp();
// }

// Future<void> storeAttendance(String userId, String beaconData) async {
//   await _firestore.collection('attendance').add({
//     'user_id': userId,
//     'beacon_data': beaconData,
//     'timestamp': Timestamp.now(), // Records the current date and time
// //   });
// }
