// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

Future<int> genImagenum(String userid) async {
  /// MODIFY CODE ONLY BELOW THIS LINE

  int imageCount = 0;
  await FirebaseFirestore.instance
      .collection('images')
      .where('uid', isEqualTo: userid)
      .get()
      .then((snapshot) => imageCount = snapshot.docs.length)
      .catchError((error) => print('Error getting chat count: $error'));

  return imageCount;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
