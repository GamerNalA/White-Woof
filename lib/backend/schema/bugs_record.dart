import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bugs_record.g.dart';

abstract class BugsRecord implements Built<BugsRecord, BugsRecordBuilder> {
  static Serializer<BugsRecord> get serializer => _$bugsRecordSerializer;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  String? get description;

  String? get image;

  String? get user;

  DateTime? get ts;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BugsRecordBuilder builder) => builder
    ..title = ''
    ..description = ''
    ..image = ''
    ..user = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bugs');

  static Stream<BugsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BugsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BugsRecord._();
  factory BugsRecord([void Function(BugsRecordBuilder) updates]) = _$BugsRecord;

  static BugsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBugsRecordData({
  String? title,
  String? description,
  String? image,
  String? user,
  DateTime? ts,
}) {
  final firestoreData = serializers.toFirestore(
    BugsRecord.serializer,
    BugsRecord(
      (b) => b
        ..title = title
        ..description = description
        ..image = image
        ..user = user
        ..ts = ts,
    ),
  );

  return firestoreData;
}
