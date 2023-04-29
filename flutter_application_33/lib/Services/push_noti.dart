import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseMessaging fMessaging = FirebaseMessaging.instance;
// for getting firebase messaging token
Future<void> getFirebaseMessagingToken() async {
  await fMessaging.requestPermission();

  await fMessaging.getToken().then((t) {
    if (t != null) {
      firestore.collection('Vendors').doc('').update({"token": t});
      // me.pushToken = t;
      print('Push Token: $t');
    }
  });

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });
}

// for sending push notification
Future<void> sendPushNotification() async {
  var token;
  QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection('Vendors').get();
  for (int i = 0; i < querySnapshot.docs.length; i++) {
    token = querySnapshot.docs[i]['token'];
  }
  try {
    final body = {
      "to": token,
      "notification": {
        "title": "vansh", //our name should be send
        "body": "hi there!",
        "android_channel_id": "chats"
      },
    };

    var res = await post(Uri.parse('https://fcm.googleapis.com/fcm/send'),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader:
              'key=AAAAUAQ0LcQ:APA91bFUjFf2Qc1jnAuJcZXSxxL0ZY-XtkOcH01Lu5JlhmEUMBmIKC6YNH9Pid4bzc_OEP_0VN4t2GIRM93HUDWtmFjjbiW3awLLn-IRMdPi3sc2y4OTvf6zneGv-UHFqHwXbVXF92Pm'
        },
        body: jsonEncode(body));
    print('Response status: ${res.statusCode}');
    print('Response body: ${res.body}');
  } catch (e) {
    print('\nsendPushNotificationE: $e');
  }
}
