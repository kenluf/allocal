// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyARMX7HkaqL2nEcUxPLOdirATXmX9a_EZU',
    appId: '1:133413921792:web:0b046f263ab095c1c964e5',
    messagingSenderId: '133413921792',
    projectId: 'allocal-ef500',
    authDomain: 'allocal-ef500.firebaseapp.com',
    storageBucket: 'allocal-ef500.appspot.com',
    measurementId: 'G-2KRJ3V2YXQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDayMmm3zdtLMNaNwBFLcOjH1n3aH1iw60',
    appId: '1:133413921792:android:d867e2920890f0abc964e5',
    messagingSenderId: '133413921792',
    projectId: 'allocal-ef500',
    storageBucket: 'allocal-ef500.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_hoTbcdPsGljgBCXDn4ap_xR9RqYNfcY',
    appId: '1:133413921792:ios:6677763588c1dcfbc964e5',
    messagingSenderId: '133413921792',
    projectId: 'allocal-ef500',
    storageBucket: 'allocal-ef500.appspot.com',
    iosBundleId: 'com.example.allocal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_hoTbcdPsGljgBCXDn4ap_xR9RqYNfcY',
    appId: '1:133413921792:ios:6677763588c1dcfbc964e5',
    messagingSenderId: '133413921792',
    projectId: 'allocal-ef500',
    storageBucket: 'allocal-ef500.appspot.com',
    iosBundleId: 'com.example.allocal',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyARMX7HkaqL2nEcUxPLOdirATXmX9a_EZU',
    appId: '1:133413921792:web:a8d1283d79f5121ec964e5',
    messagingSenderId: '133413921792',
    projectId: 'allocal-ef500',
    authDomain: 'allocal-ef500.firebaseapp.com',
    storageBucket: 'allocal-ef500.appspot.com',
    measurementId: 'G-JPJWFQDJR6',
  );
}
