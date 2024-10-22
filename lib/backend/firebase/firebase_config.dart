import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBNPp0PjnGMnW6-iUx7w1ESMyoc_gSJrUA",
            authDomain: "ants-13ab5.firebaseapp.com",
            projectId: "ants-13ab5",
            storageBucket: "ants-13ab5.appspot.com",
            messagingSenderId: "593458727243",
            appId: "1:593458727243:web:17c911592fb6339fdcc0ce"));
  } else {
    await Firebase.initializeApp();
  }
}
