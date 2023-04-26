// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> firebaseVersionGet() async {
  final snapshot = await FirebaseFirestore.instance.collection('version').get();
  if (snapshot.docs.isNotEmpty) {
    final doc = snapshot.docs.first;
    final version = doc.data()['version'];
    if (version != null) {
      return version;
    }
  }
  return 'tuc';
}
