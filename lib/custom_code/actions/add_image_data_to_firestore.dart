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

Future<void> addImageDataToFirestore(String collectionReference, String name,
    String prompt, List<dynamic> imageList) async {
  final CollectionReference imageCollection =
      FirebaseFirestore.instance.collection(collectionReference);

  for (var i = 0; i < imageList.length; i++) {
    final DocumentReference documentReference =
        await imageCollection.doc().collection('imagedata').add({
      'image': imageList[i],
      'name': name,
      'prompt': prompt,
      'ts': FieldValue.serverTimestamp(),
    });

    print('Added document ${documentReference.id}');
  }

  print('Done adding image data to Firestore');
}
