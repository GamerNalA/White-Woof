import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'completed_record.g.dart';

abstract class CompletedRecord
    implements Built<CompletedRecord, CompletedRecordBuilder> {
  static Serializer<CompletedRecord> get serializer =>
      _$completedRecordSerializer;

  String? get username;

  DocumentReference? get userRef;

  String? get userimage;

  DateTime? get ts;

  double? get amount;

  int? get cookieAmount;

  String? get userid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompletedRecordBuilder builder) => builder
    ..username = ''
    ..userimage = ''
    ..amount = 0.0
    ..cookieAmount = 0
    ..userid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('completed');

  static Stream<CompletedRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompletedRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompletedRecord._();
  factory CompletedRecord([void Function(CompletedRecordBuilder) updates]) =
      _$CompletedRecord;

  static CompletedRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompletedRecordData({
  String? username,
  DocumentReference? userRef,
  String? userimage,
  DateTime? ts,
  double? amount,
  int? cookieAmount,
  String? userid,
}) {
  final firestoreData = serializers.toFirestore(
    CompletedRecord.serializer,
    CompletedRecord(
      (c) => c
        ..username = username
        ..userRef = userRef
        ..userimage = userimage
        ..ts = ts
        ..amount = amount
        ..cookieAmount = cookieAmount
        ..userid = userid,
    ),
  );

  return firestoreData;
}
