import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCy-dwRTn3YOx8G9ZIpIWO5QM-lYyiHdJo",
            authDomain: "ganimedes-20dce.firebaseapp.com",
            projectId: "ganimedes-20dce",
            storageBucket: "ganimedes-20dce.appspot.com",
            messagingSenderId: "944425604488",
            appId: "1:944425604488:web:d9c7574e852d0828ae563d",
            measurementId: "G-F4CMKNB3H7"));
  } else {
    await Firebase.initializeApp();
  }
}
