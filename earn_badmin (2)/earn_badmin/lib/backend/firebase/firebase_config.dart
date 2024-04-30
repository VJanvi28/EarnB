import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDiHc9xyT3R8X4Z7iO9XiEJLrJqsW1jllk",
            authDomain: "earn-b-xd7y5c.firebaseapp.com",
            projectId: "earn-b-xd7y5c",
            storageBucket: "earn-b-xd7y5c.appspot.com",
            messagingSenderId: "271703044719",
            appId: "1:271703044719:web:3ef434d89349b7464ad39a"));
  } else {
    await Firebase.initializeApp();
  }
}
