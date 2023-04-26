import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cookies_record.g.dart';

abstract class CookiesRecord
    implements Built<CookiesRecord, CookiesRecordBuilder> {
  static Serializer<CookiesRecord> get serializer => _$cookiesRecordSerializer;

  String? get description;

  int? get type;

  double? get price;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CookiesRecordBuilder builder) => builder
    ..description = ''
    ..type = 0
    ..price = 0.0
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cookies');

  static Stream<CookiesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CookiesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CookiesRecord._();
  factory CookiesRecord([void Function(CookiesRecordBuilder) updates]) =
      _$CookiesRecord;

  static CookiesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCookiesRecordData({
  String? description,
  int? type,
  double? price,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    CookiesRecord.serializer,
    CookiesRecord(
      (c) => c
        ..description = description
        ..type = type
        ..price = price
        ..image = image,
    ),
  );

  return firestoreData;
}
