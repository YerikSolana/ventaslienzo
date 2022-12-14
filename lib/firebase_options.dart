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
    apiKey: 'AIzaSyBbfRynHgftUeEj0u8Xq_p4ur0w2ce-vVE',
    appId: '1:148906014472:web:f6c887903ca8528d651ebd',
    messagingSenderId: '148906014472',
    projectId: 'ventaslienzo-b3bc0',
    authDomain: 'ventaslienzo-b3bc0.firebaseapp.com',
    storageBucket: 'ventaslienzo-b3bc0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCyPpCZ76I3MZ6LDesmNhlwVZZ2s1JigRY',
    appId: '1:148906014472:android:b985b4010a126e9c651ebd',
    messagingSenderId: '148906014472',
    projectId: 'ventaslienzo-b3bc0',
    storageBucket: 'ventaslienzo-b3bc0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBQ5nOpdCnd5IWZqboQaaQY9dhzbjOG05U',
    appId: '1:148906014472:ios:c453635afdef2819651ebd',
    messagingSenderId: '148906014472',
    projectId: 'ventaslienzo-b3bc0',
    storageBucket: 'ventaslienzo-b3bc0.appspot.com',
    iosClientId:
        '148906014472-f5r0msum2vothgc0rr51cgipsudj751b.apps.googleusercontent.com',
    iosBundleId: 'com.example.ventaslienzo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBQ5nOpdCnd5IWZqboQaaQY9dhzbjOG05U',
    appId: '1:148906014472:ios:c453635afdef2819651ebd',
    messagingSenderId: '148906014472',
    projectId: 'ventaslienzo-b3bc0',
    storageBucket: 'ventaslienzo-b3bc0.appspot.com',
    iosClientId:
        '148906014472-f5r0msum2vothgc0rr51cgipsudj751b.apps.googleusercontent.com',
    iosBundleId: 'com.example.ventaslienzo',
  );
}
