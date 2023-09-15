// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB18fATp9cJrQaht0oWeUDf_8Sz-oOUhBw',
    appId: '1:218434662686:web:9501b0969ff0fb2229d90f',
    messagingSenderId: '218434662686',
    projectId: 'welcome-app-flutter',
    authDomain: 'welcome-app-flutter.firebaseapp.com',
    storageBucket: 'welcome-app-flutter.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDTw7SrMs4z6M1Sv02tawBa98jI6c4k4Ug',
    appId: '1:218434662686:android:181217d97937ac6c29d90f',
    messagingSenderId: '218434662686',
    projectId: 'welcome-app-flutter',
    storageBucket: 'welcome-app-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA2ZhGCkVlFf1gWe0MYzyNu3YovPDKY1yo',
    appId: '1:218434662686:ios:09f1eb4e29d823d729d90f',
    messagingSenderId: '218434662686',
    projectId: 'welcome-app-flutter',
    storageBucket: 'welcome-app-flutter.appspot.com',
    iosBundleId: 'com.example.flutterAppWelcome',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA2ZhGCkVlFf1gWe0MYzyNu3YovPDKY1yo',
    appId: '1:218434662686:ios:09f1eb4e29d823d729d90f',
    messagingSenderId: '218434662686',
    projectId: 'welcome-app-flutter',
    storageBucket: 'welcome-app-flutter.appspot.com',
    iosBundleId: 'com.example.flutterAppWelcome',
  );
}