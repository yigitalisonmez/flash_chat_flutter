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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDHG9pnLmTtfnMM6zqkA6DkvvYY-Pzm304',
    appId: '1:735559942537:web:134791a49207f078ade158',
    messagingSenderId: '735559942537',
    projectId: 'flash-chat-851b7',
    authDomain: 'flash-chat-851b7.firebaseapp.com',
    storageBucket: 'flash-chat-851b7.appspot.com',
    measurementId: 'G-NCWHEH0VRR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBG52KOA08vKzmqsGg_Huhva40GpC1VnaM',
    appId: '1:735559942537:android:e176e59404e76781ade158',
    messagingSenderId: '735559942537',
    projectId: 'flash-chat-851b7',
    storageBucket: 'flash-chat-851b7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDsC74RN4LxgKmDTpZ4qLeHcVuLmv634pk',
    appId: '1:735559942537:ios:ae7e0fe7bd85e13fade158',
    messagingSenderId: '735559942537',
    projectId: 'flash-chat-851b7',
    storageBucket: 'flash-chat-851b7.appspot.com',
    iosBundleId: 'com.example.flashChatFlutter',
  );
}
