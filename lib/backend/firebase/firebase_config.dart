import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD0DDHZdXZk2SQujaa0Xa08yyt3VnEhsh4",
            authDomain: "recytec-50b45.firebaseapp.com",
            projectId: "recytec-50b45",
            storageBucket: "recytec-50b45.appspot.com",
            messagingSenderId: "693637783896",
            appId: "1:693637783896:web:7fdafabe61462d666cc52d",
            measurementId: "G-FZJW3YQFYX"));
  } else {
    await Firebase.initializeApp();
  }
}
