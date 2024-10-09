import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCVpzGLkVc2oh_Sri2NZUcFmZOFJHtRg4I",
            authDomain: "test-25085.firebaseapp.com",
            projectId: "test-25085",
            storageBucket: "test-25085.appspot.com",
            messagingSenderId: "647835449620",
            appId: "1:647835449620:web:82a7860a161e7f12dc2a01"));
  } else {
    await Firebase.initializeApp();
  }
}
