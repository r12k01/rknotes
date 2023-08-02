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
    apiKey: 'AIzaSyCbCVzPYl_NYy5s4soUgTjg0wWrOqo28fg',
    appId: '1:34628339727:web:bf2eeb0d17b0251b0d7b7a',
    messagingSenderId: '34628339727',
    projectId: 'rknotes-app',
    authDomain: 'rknotes-app.firebaseapp.com',
    storageBucket: 'rknotes-app.appspot.com',
    measurementId: 'G-0G7QF3YFK1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATWKB5Sb5qadswejJQIIZUIFqFxiFQ6Ec',
    appId: '1:34628339727:android:a4cf5a85f5dfc2360d7b7a',
    messagingSenderId: '34628339727',
    projectId: 'rknotes-app',
    storageBucket: 'rknotes-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbQ9oB0czzVSrg3DnYFinKKlzIT_4MWC0',
    appId: '1:34628339727:ios:fcc4f335b4a42ec40d7b7a',
    messagingSenderId: '34628339727',
    projectId: 'rknotes-app',
    storageBucket: 'rknotes-app.appspot.com',
    iosClientId: '34628339727-9064h1n0etftbtral29i5ukcb20149qh.apps.googleusercontent.com',
    iosBundleId: 'com.noterk.rknotesapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBbQ9oB0czzVSrg3DnYFinKKlzIT_4MWC0',
    appId: '1:34628339727:ios:ac27606e03ad28c60d7b7a',
    messagingSenderId: '34628339727',
    projectId: 'rknotes-app',
    storageBucket: 'rknotes-app.appspot.com',
    iosClientId: '34628339727-d01hhfk8rsred48pvlrpchcrb4immc9l.apps.googleusercontent.com',
    iosBundleId: 'com.noterk.rknotesapp.RunnerTests',
  );
}