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
    apiKey: 'AIzaSyD6VQVE9ApJiI39nCexGgNBODqPdMNpsxs',
    appId: '1:236220258448:web:9bde4d8517622fcc2ce015',
    messagingSenderId: '236220258448',
    projectId: 'cmsc23-todo-app-jabaleda',
    authDomain: 'cmsc23-todo-app-jabaleda.firebaseapp.com',
    storageBucket: 'cmsc23-todo-app-jabaleda.appspot.com',
    measurementId: 'G-ZG6Y0K19XB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApfaspINkkmDDdvSEjH4dDg-nTuIUdgqE',
    appId: '1:236220258448:android:a8455f0a7bb12a5d2ce015',
    messagingSenderId: '236220258448',
    projectId: 'cmsc23-todo-app-jabaleda',
    storageBucket: 'cmsc23-todo-app-jabaleda.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCs68Ayl-iwbUbvoLjgoOcCUPJNHW47qcA',
    appId: '1:236220258448:ios:3d865c1b7ed8f8992ce015',
    messagingSenderId: '236220258448',
    projectId: 'cmsc23-todo-app-jabaleda',
    storageBucket: 'cmsc23-todo-app-jabaleda.appspot.com',
    iosBundleId: 'com.example.week7NetworkingDiscussion',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCs68Ayl-iwbUbvoLjgoOcCUPJNHW47qcA',
    appId: '1:236220258448:ios:3d865c1b7ed8f8992ce015',
    messagingSenderId: '236220258448',
    projectId: 'cmsc23-todo-app-jabaleda',
    storageBucket: 'cmsc23-todo-app-jabaleda.appspot.com',
    iosBundleId: 'com.example.week7NetworkingDiscussion',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD6VQVE9ApJiI39nCexGgNBODqPdMNpsxs',
    appId: '1:236220258448:web:ddafce1f2c3582152ce015',
    messagingSenderId: '236220258448',
    projectId: 'cmsc23-todo-app-jabaleda',
    authDomain: 'cmsc23-todo-app-jabaleda.firebaseapp.com',
    storageBucket: 'cmsc23-todo-app-jabaleda.appspot.com',
    measurementId: 'G-K9CS7BHMZD',
  );
}
