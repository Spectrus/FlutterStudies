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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for iOS - '
          'try to add using FlutLab Firebase Configuration',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'it not supported by FlutLab yet, but you can add it manually',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'it not supported by FlutLab yet, but you can add it manually',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'it not supported by FlutLab yet, but you can add it manually',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAa7B6ngjSFwO_pz179tPVMEXEtXWG5ggM',
    appId: '1:213469649759:android:587916af132b027b03f4ea',
    messagingSenderId: '213469649759',
    projectId: 'databaseloginpage',
    storageBucket: 'databaseloginpage.appspot.com'
  );

  static const FirebaseOptions web = FirebaseOptions(
      apiKey: 'AIzaSyAxK8yJJtH7rDQFK50gU_HTIew1jR40TAc',
      authDomain: 'databaseloginpage.firebaseapp.com',
      projectId: 'databaseloginpage',
      storageBucket: 'databaseloginpage.appspot.com',
      messagingSenderId: '213469649759',
      appId: '1:213469649759:web:3b85c136c969767803f4ea');
}
