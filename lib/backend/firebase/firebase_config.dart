import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA1L5ZXnSb3YZ7C0m6davVQpWF48JaDLvA",
            authDomain: "parent-student-app-dede5.firebaseapp.com",
            projectId: "parent-student-app-dede5",
            storageBucket: "parent-student-app-dede5.appspot.com",
            messagingSenderId: "103242257774",
            appId: "1:103242257774:web:2390bdd396d6968d499d7f",
            measurementId: "G-HMS30FT3MZ"));
  } else {
    await Firebase.initializeApp();
  }
}
