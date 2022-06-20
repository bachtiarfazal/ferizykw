// import 'dart:html';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';

// initializeNotification() async {
//   final fcm = FirebaseMessaging.instance;

//   try {
//     if (Platform.isAndroid) {
//       await fcm.requestPermission(
//         alert: true,
//         badge: true,
//         sound: true,
//       );

//       await fcm.setForegroundNotificationPresentationOptions(
//         alert: true,
//         badge: true,
//         sound: true,
//       );

//       FirebaseMessaging.onMessage.listen((event) {});
//       FirebaseMessaging.onBackgroundMessage((message) async {});
//       FirebaseMessaging.onMessageOpenedApp.listen((event) {});
//     }
//   } catch (e) {
//     debugPrint(e.toString());
//   }
// }
