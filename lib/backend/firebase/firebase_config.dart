import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBABGJEgFezmlE47lSK6-kNR_GWB9C_kbA",
            authDomain: "white-woof.firebaseapp.com",
            projectId: "white-woof",
            storageBucket: "white-woof.appspot.com",
            messagingSenderId: "720747846768",
            appId: "1:720747846768:web:f486f8602f191a7f8328b5",
            measurementId: "G-46158XFDDH"));
  } else {
    await Firebase.initializeApp();
  }
}
