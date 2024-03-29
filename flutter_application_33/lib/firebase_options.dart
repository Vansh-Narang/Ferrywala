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
    apiKey: 'AIzaSyCgpicpz3NyymSlM9yRrVEv1AI8TZiE48k',
    appId: '1:273779936240:web:5a49cd08ba0d7b12eeeb35',
    messagingSenderId: '273779936240',
    projectId: 'vihaan-2b504',
    authDomain: 'vihaan-2b504.firebaseapp.com',
    storageBucket: 'vihaan-2b504.appspot.com',
    measurementId: 'G-THD0S09B7D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD67kGJUgezO_lQQGUIVMYIIc7CsJXhs3U',
    appId: '1:273779936240:android:5908037232678ba3eeeb35',
    messagingSenderId: '273779936240',
    projectId: 'vihaan-2b504',
    storageBucket: 'vihaan-2b504.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFMqOwPt1CjDmEnBrcUagoS5R13Btpq20',
    appId: '1:273779936240:ios:c89309975f58d82aeeeb35',
    messagingSenderId: '273779936240',
    projectId: 'vihaan-2b504',
    storageBucket: 'vihaan-2b504.appspot.com',
    iosClientId: '273779936240-7jjv7gmlb9mddu5n8bfe2l3pj99u6k63.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication33',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBFMqOwPt1CjDmEnBrcUagoS5R13Btpq20',
    appId: '1:273779936240:ios:c89309975f58d82aeeeb35',
    messagingSenderId: '273779936240',
    projectId: 'vihaan-2b504',
    storageBucket: 'vihaan-2b504.appspot.com',
    iosClientId: '273779936240-7jjv7gmlb9mddu5n8bfe2l3pj99u6k63.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication33',
  );
}
