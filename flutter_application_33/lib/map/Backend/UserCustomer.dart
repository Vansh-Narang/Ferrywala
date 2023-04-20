// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// Create a CollectionReference called users that references the firestore collection
CollectionReference users = FirebaseFirestore.instance.collection('Vendors');

Future<void> addUser() {
  return users
      .add({'full_name': "va", 'company': "google", 'age': "19"})
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
}
