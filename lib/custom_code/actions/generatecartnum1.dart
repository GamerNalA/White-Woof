// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'dart:core';

import '/backend/backend.dart' show FFFirestorePage;

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

Future<bool> generatecartnum1(String userid) async {
  int chatCount = 0;
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('cart')
      .where('uid', isEqualTo: userid)
      .get();
  chatCount = snapshot.docs.length;
  return chatCount > 0 ? true : false;
}
