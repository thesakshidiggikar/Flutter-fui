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
    apiKey: 'AIzaSyCG-VBnkYf2S-KwPN6RbesZTEGpGKNTnZA',
    appId: '1:1084839454204:web:500d70740660adb26d7e79',
    messagingSenderId: '1084839454204',
    projectId: 'clgapp-884c0',
    authDomain: 'clgapp-884c0.firebaseapp.com',
    storageBucket: 'clgapp-884c0.appspot.com',
    measurementId: 'G-L2813N1LNR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDgIGLo19sCi8JQtZeiawW6leQh-eYVOhM',
    appId: '1:1084839454204:android:63e2ebf019ed7b856d7e79',
    messagingSenderId: '1084839454204',
    projectId: 'clgapp-884c0',
    storageBucket: 'clgapp-884c0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBN5sj_oVSZYJtDdL3gZ8rNgTlLEdjh_Nw',
    appId: '1:1084839454204:ios:5b116b5a5c35641e6d7e79',
    messagingSenderId: '1084839454204',
    projectId: 'clgapp-884c0',
    storageBucket: 'clgapp-884c0.appspot.com',
    iosBundleId: 'com.example.flutterUniversityApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBN5sj_oVSZYJtDdL3gZ8rNgTlLEdjh_Nw',
    appId: '1:1084839454204:ios:5b116b5a5c35641e6d7e79',
    messagingSenderId: '1084839454204',
    projectId: 'clgapp-884c0',
    storageBucket: 'clgapp-884c0.appspot.com',
    iosBundleId: 'com.example.flutterUniversityApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCG-VBnkYf2S-KwPN6RbesZTEGpGKNTnZA',
    appId: '1:1084839454204:web:a9310b96126316f76d7e79',
    messagingSenderId: '1084839454204',
    projectId: 'clgapp-884c0',
    authDomain: 'clgapp-884c0.firebaseapp.com',
    storageBucket: 'clgapp-884c0.appspot.com',
    measurementId: 'G-82FSW0Z14Y',
  );

}