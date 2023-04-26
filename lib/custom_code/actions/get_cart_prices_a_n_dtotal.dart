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

Future<double> getCartPricesANDtotal(String userId) async {
  double total = 0;

  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('cart')
      .where('uid', isEqualTo: userId)
      .get();

  snapshot.docs.forEach((doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    if (data.containsKey('price')) {
      total += data['price'];
    }
  });

  return total;
}
