import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pay_record.g.dart';

abstract class PayRecord implements Built<PayRecord, PayRecordBuilder> {
  static Serializer<PayRecord> get serializer => _$payRecordSerializer;

  String? get username;

  DocumentReference? get userRef;

  String? get userimage;

  DateTime? get ts;

  double? get amount;

  int? get cookieAmount;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PayRecordBuilder builder) => builder
    ..username = ''
    ..userimage = ''
    ..amount = 0.0
    ..cookieAmount = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pay');

  static Stream<PayRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PayRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PayRecord._();
  factory PayRecord([void Function(PayRecordBuilder) updates]) = _$PayRecord;

  static PayRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPayRecordData({
  String? username,
  DocumentReference? userRef,
  String? userimage,
  DateTime? ts,
  double? amount,
  int? cookieAmount,
}) {
  final firestoreData = serializers.toFirestore(
    PayRecord.serializer,
    PayRecord(
      (p) => p
        ..username = username
        ..userRef = userRef
        ..userimage = userimage
        ..ts = ts
        ..amount = amount
        ..cookieAmount = cookieAmount,
    ),
  );

  return firestoreData;
}
