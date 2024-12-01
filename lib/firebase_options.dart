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
    apiKey: 'AIzaSyAevKbT2GoglpN8nDl_5W4z5poKVfRiHrA',
    appId: '1:158147123698:web:8c18631f11e80e2e37736b',
    messagingSenderId: '158147123698',
    projectId: 'fruit-hub-7a85c',
    authDomain: 'fruit-hub-7a85c.firebaseapp.com',
    storageBucket: 'fruit-hub-7a85c.firebasestorage.app',
    measurementId: 'G-0G3PC1EWKH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD8S1f4MeGcKX8uuS6NiKHwXHfey727ULs',
    appId: '1:158147123698:android:4c818923bfa6691737736b',
    messagingSenderId: '158147123698',
    projectId: 'fruit-hub-7a85c',
    storageBucket: 'fruit-hub-7a85c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC52hxWPn_iJrCaybVCDDiNmxFDerJvUQ4',
    appId: '1:158147123698:ios:5b2d8c5bf6b54f5c37736b',
    messagingSenderId: '158147123698',
    projectId: 'fruit-hub-7a85c',
    storageBucket: 'fruit-hub-7a85c.firebasestorage.app',
    iosBundleId: 'com.example.fruitHub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC52hxWPn_iJrCaybVCDDiNmxFDerJvUQ4',
    appId: '1:158147123698:ios:e223e44276265b4137736b',
    messagingSenderId: '158147123698',
    projectId: 'fruit-hub-7a85c',
    storageBucket: 'fruit-hub-7a85c.firebasestorage.app',
    iosBundleId: 'com.example.fruitHu',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAevKbT2GoglpN8nDl_5W4z5poKVfRiHrA',
    appId: '1:158147123698:web:a209e560c83969ca37736b',
    messagingSenderId: '158147123698',
    projectId: 'fruit-hub-7a85c',
    authDomain: 'fruit-hub-7a85c.firebaseapp.com',
    storageBucket: 'fruit-hub-7a85c.firebasestorage.app',
    measurementId: 'G-Y0ZHGGES33',
  );
}